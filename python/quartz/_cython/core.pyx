# distutils: language = c++

from cython.operator import dereference
from CCore cimport GateType
from CCore cimport Gate
from CCore cimport DAG
from CCore cimport DAG_ptr
from CCore cimport GraphXfer
from CCore cimport Graph
from CCore cimport Op
from CCore cimport Context
from CCore cimport EquivalenceSet
import ctypes

ctypedef GraphXfer* GraphXfer_ptr

cdef class PyGateType:
    cdef GateType gt

    def __cinit__(self, GateType gt_):
        self.gt = gt_

def get_gate_type(gate_type_str):
    if gate_type_str == "h": return GateType.h
    if gate_type_str == "x": return GateType.x
    if gate_type_str == "y": return GateType.y
    if gate_type_str == "rx": return GateType.rx
    if gate_type_str == "ry": return GateType.ry
    if gate_type_str == "rz": return GateType.rz
    if gate_type_str == "cx": return GateType.cx
    if gate_type_str == "ccx" :return GateType.ccx
    if gate_type_str == "add" :return GateType.add
    if gate_type_str == "neg" :return GateType.neg
    if gate_type_str == "z" :return GateType.z
    if gate_type_str == "s" :return GateType.s
    if gate_type_str == "sdg" :return GateType.sdg
    if gate_type_str == "t" :return GateType.t
    if gate_type_str == "tdg" :return GateType.tdg
    if gate_type_str == "ch" :return GateType.ch
    if gate_type_str == "swap" :return GateType.swap
    if gate_type_str == "p" :return GateType.p
    if gate_type_str == "pdg" :return GateType.pdg
    if gate_type_str == "u1" :return GateType.u1
    if gate_type_str == "u2" :return GateType.u2
    if gate_type_str == "u3" :return GateType.u3
    if gate_type_str == "ccz" :return GateType.ccz
    if gate_type_str == "cz" :return GateType.cz
    if gate_type_str == "input_qubit" :return GateType.input_qubit        
    if gate_type_str == "input_param" :return GateType.input_param        

cdef class PyGate:
    cdef Gate *gate

    def __cinit__(self, GateType gate_type, int num_qubits, int num_parameters):
        self.gate = new Gate(gate_type, num_qubits, num_parameters)

    def __dealloc__(self):
        del self.gate

    cdef set_this(self, Gate* gate_):
        del self.gate
        self.gate = gate_
        return self

    def is_commutative(self):
        return self.gate.is_commutative()

    def get_num_qubits(self):
        return self.gate.get_num_qubits()

    def get_num_parameters(self):
        return self.gate.get_num_parameters()

    def is_parameter_gate(self):
        return self.gate.is_parameter_gate()

    def is_quantum_gate(self):
        return self.gate.is_quantum_gate()

    def is_parametrized_gate(self):
        return self.gate.is_parametrized_gate()

    def is_toffoli_gate(self):
        return self.gate.is_toffoli_gate()

    @property
    def tp(self):
        return self.gate.tp

    @property
    def num_qubits(self):
        return self.gate.num_qubits

    @property
    def num_parameters(self):
        return self.gate.num_parameters

cdef class PyDAG:
    cdef DAG_ptr dag

    def __cinit__(self, int num_qubits=-1, int num_input_parameters=-1):
        self.dag = new DAG(num_qubits, num_input_parameters)

    def __dealloc__(self):
        del self.dag

    cdef set_this(self, DAG_ptr dag_):
        del self.dag
        self.dag = dag_
        return self

cdef class PyXfer:
    cdef GraphXfer *graphXfer

    def __cinit__(self, QuartzContext q_context, PyDAG py_dag_from, PyDAG py_dag_to):
        self.graphXfer = GraphXfer.create_GraphXfer(q_context.context, py_dag_from.dag, py_dag_to.dag)

    def __dealloc__(self):
        del self.graphXfer

    cdef set_this(self, GraphXfer *graphXfer_):
        del self.graphXfer
        self.graphXfer = graphXfer_
        return self

cdef class QuartzContext:
    cdef Context *context
    cdef EquivalenceSet *eqs

    def __cinit__(self, gate_type_list, equivalence_set_filename):
        self.context = new Context(gate_type_list)
        self.eqs = new EquivalenceSet()
        self.load_json(equivalence_set_filename)
        
    cdef load_json(self, filename):
        # Load ECC from file
        filename_bytes = filename.encode('utf-8')
        assert(self.eqs.load_json(self.context, filename_bytes), "Failed to load equivalence set.")

    # size_t next_global_unique_id();
    def next_global_unique_id(self):
        return self.context.next_global_unique_id()

    @property
    def xfers(self):
        # Get all the equivalence sets
        # And convert them into xfers
        eq_sets = self.eqs.get_all_equivalence_sets()

        xfers = []
        for eq_set in eq_sets:
            first = True
            for dag_ptr in eq_set:
                if first:
                    first = False
                else:
                    # Construct PyXfer for both directions
                    xfers.append(PyXfer(self, PyDAG().set_this(eq_set[0]), PyDAG().set_this(dag_ptr)))
                    xfers.append(PyXfer(self, PyDAG().set_this(dag_ptr), PyDAG().set_this(eq_set[0])))
                    pass
        return xfers

    def get_xfer_from_id(self, id):
        return self.xfers[id]

cdef class PyNode:
    cdef Op *node

    def __cinit__(self, int node_id, PyGate py_gate):
        self.node = new Op(node_id, py_gate.gate)

    def __dealloc__(self):
        del self.node

    @property
    def node_id(self):
        return self.node.guid

    @property
    def gate(self):
        pass


cdef class PyGraph:
    cdef Graph *graph

    def __cinit__(self, QuartzContext quartz_context, PyDAG py_dag = None):
        if py_dag == None:
            self.graph = new Graph(quartz_context.context)
        else:
            self.graph = new Graph(quartz_context.context, dereference(py_dag.dag))

    def __dealloc__(self):
        del self.graph

    cdef set_this(self, Graph *graph_):
        del self.graph
        self.graph = graph_
        return self

    cdef _xfer_appliable(self, PyXfer xfer, PyNode node):
        return self.graph.xfer_appliable(xfer.graphXfer, node.node)

    def available_xfers(self, quartz_context, py_node, output_format):
        xfers = quartz_context.xfers
        result = []
        for i in range(len(xfers)):
            xfer = xfers[i]
            if self._xfer_appliable(xfer, py_node):
                if output_format in ['int']:
                    result.append(i)
                else:
                    result.append(xfer)
        return result
                    
    cdef _apply_xfer(self, QuartzContext quartz_context, PyXfer xfer, PyNode node):
        graph = PyGraph(quartz_context)
        return graph.set_this(self.graph.apply_transfer(xfer.graphXfer, node.node))

    def apply_xfer(self,quartz_context, py_xfer, py_node):
        return self._apply_xfer(quartz_context, py_xfer, py_node)
        