#include "dag.h"
#include <cassert>

DAG::DAG(int _num_qubits, int _num_parameters)
    : num_qubits(_num_qubits), num_input_parameters(_num_parameters) {
  // Initialize num_qubits qubits
  for (int i = 0; i < num_qubits; i++) {
    auto node = std::make_unique<DAGNode>();
    node->type = DAGNode::input_qubit;
    outputs.push_back(node.get());
    nodes.push_back(std::move(node));
  }
  // Initialize num_input_parameters parameters
  for (int i = 0; i < num_input_parameters; i++) {
    auto node = std::make_unique<DAGNode>();
    node->type = DAGNode::input_param;
    parameters.push_back(node.get());
    nodes.push_back(std::move(node));
  }
}

bool DAG::add_gate(const std::vector<int> &qubit_indices,
                   const std::vector<int> &parameter_indices,
                   const Gate *gate,
                   int *output_para_index) {
  if (gate->get_num_qubits() != qubit_indices.size())
    return false;
  if (gate->get_num_parameters() != parameter_indices.size())
    return false;
  if (gate->is_parameter_gate() && output_para_index == nullptr)
    return false;
  // qubit indices must stay in range
  for (auto qubit_idx : qubit_indices)
    if ((qubit_idx < 0) || (qubit_idx >= get_num_qubits()))
      return false;
  // parameter indices must stay in range
  for (auto para_idx : parameter_indices)
    if ((para_idx < 0) || (para_idx >= parameters.size()))
      return false;
  auto edge = std::make_unique<DAGHyperEdge>();
  edge->gate = gate;
  for (auto qubit_idx : qubit_indices) {
    edge->input_nodes.push_back(outputs[qubit_idx]);
    outputs[qubit_idx]->output_edges.push_back(edge.get());
  }
  for (auto para_idx : parameter_indices) {
    edge->input_nodes.push_back(parameters[para_idx]);
    parameters[para_idx]->output_edges.push_back(edge.get());
  }
  if (gate->is_parameter_gate()) {
    auto node = std::make_unique<DAGNode>();
    node->type = DAGNode::internal_param;
    node->input_edges.push_back(edge.get());
    edge->output_nodes.push_back(node.get());
    parameters.push_back(node.get());
    *output_para_index = (int) parameters.size();
    nodes.push_back(std::move(node));
  } else {
    assert(gate->is_quantum_gate());
    for (auto qubit_idx : qubit_indices) {
      auto node = std::make_unique<DAGNode>();
      node->type = DAGNode::internal_param;
      node->input_edges.push_back(edge.get());
      edge->output_nodes.push_back(node.get());
      outputs[qubit_idx] = node.get(); // Update outputs
      nodes.push_back(std::move(node));
    }
  }
  edges.push_back(std::move(edge));
  return true;
}

bool DAG::evaluate(const Vector &input_dis,
                   const std::vector<ParamType> &input_parameters,
                   Vector &output_dis) const {
  // We should have 2**n entries for the distribution
  if (input_dis.size() != (1 << get_num_qubits()))
    return false;
  if (input_parameters.size() != get_num_input_parameters())
    return false;
  assert(get_num_input_parameters() <= get_num_total_parameters());
  std::vector<ParamType> parameter_values = input_parameters;
  parameter_values.resize(get_num_total_parameters());

  output_dis = input_dis;

  // Assume the edges are already sorted in the topological order.
  const int num_edges = (int) edges.size();
  for (int i = 0; i < num_edges; i++) {
    // TODO
  }
  return true;
}

int DAG::get_num_qubits() const {
  return num_qubits;
}

int DAG::get_num_input_parameters() const {
  return num_input_parameters;
}

int DAG::get_num_total_parameters() const {
  return (int) parameters.size();
}