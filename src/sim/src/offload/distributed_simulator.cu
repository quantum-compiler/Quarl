#include "distributed_simulator.h"

using namespace sim;
using namespace Legion;

DistributedSimulator::DSHandler
DistributedSimulator::cuda_init_task(Task const *task,
                                     std::vector<PhysicalRegion> const &regions,
                                     Context ctx, Runtime *runtime) {
  DSConfig const *config = (DSConfig *)task->args;
  DSHandler handle;
  handle.workSpaceSize = (size_t)1 * 1024 * 1024 * 1024; // 1GB work space
  handle.num_local_qubits = config->num_local_qubits;
  printf("Num_local_qubits = %lld\n", handle.num_local_qubits);
  custatevecCreate(&handle.statevec);
  {
    // allocate memory for workspace
    Memory gpu_mem = Machine::MemoryQuery(Machine::get_machine())
                         .only_kind(Memory::GPU_FB_MEM)
                         .best_affinity_to(task->target_proc)
                         .first();
    Realm::Rect<1, coord_t> bounds(
        Realm::Point<1, coord_t>(0),
        Realm::Point<1, coord_t>(handle.workSpaceSize - 1));
    std::vector<size_t> field_sizes;
    field_sizes.push_back(sizeof(char));
    Realm::RegionInstance workspaceInst;
    Realm::RegionInstance::create_instance(workspaceInst, gpu_mem, bounds,
                                           field_sizes, 0,
                                           Realm::ProfilingRequestSet())
        .wait();
    handle.workSpace = workspaceInst.pointer_untyped(0, sizeof(char));
  }
  handle.ncclComm = nullptr;
  handle.vecDataType = config->state_vec_data_type;
  return handle;
}

void DistributedSimulator::sv_init_task(
    Task const *task, std::vector<PhysicalRegion> const &regions, Context ctx,
    Runtime *runtime) {
  // TODO: implement this function
  printf("SV Init...\n");
  return;
}

void DistributedSimulator::sv_comp_task(
    Task const *task, std::vector<PhysicalRegion> const &regions, Context ctx,
    Runtime *runtime) {
  GateInfo const *info = (GateInfo *)task->args;
  FusedGate* fgates = (FusedGate*) info->fgates;
  printf("num_target: %d, %d, %d, %d\n", fgates[0].num_target, fgates[1].num_target, fgates[2].num_target, fgates[3].num_target);
  // if (info == nullptr) return;
  DSHandler const *handler = (DSHandler *)task->local_args;
  
  assert(handler->vecDataType == DT_FLOAT_COMPLEX || handler->vecDataType == DT_DOUBLE_COMPLEX);
  cudaDataType_t data_type = handler->vecDataType == DT_FLOAT ? CUDA_C_32F : CUDA_C_64F;
  custatevecComputeType_t compute_type = handler->vecDataType == DT_FLOAT ? CUSTATEVEC_COMPUTE_32F : CUSTATEVEC_COMPUTE_64F;
  GenericTensorAccessorW state_vector = helperGetGenericTensorAccessorWO(
      handler->vecDataType, regions[0], task->regions[0], FID_DATA, ctx, runtime);

  // KernelGate* gates = (KernelGate*) info->kgates;

  // printf("%d Batched Tasks: fusion task 1: %d targets, targetqubit %d\n", info->num_tasks, gates[0].num_target, gates[0].target[0]);
  // printf("%d Batched Tasks: targetQubit %d, %d\n", info->num_tasks, gates[0].targetQubit, gates[20].targetQubit);
  

  // if(info->gtype == SHM) {
  //   KernelGate* kgate = (KernelGate*) info->kgates;
  //   printf("kernel target %d\n", kgate[0].targetQubit);
  // }
  // else if(info->gtype == FUSED) {
  //   FusedGate* gates = (FusedGate*) info->fgates;
  //   printf("Fusion Kernel %p\n", gates);
  //   printf("%d, Fusion Kernel Target %d, %d\n", info->num_batched_gates, gates[0].num_target, gates[0].target[0]);
  //   return;
  // }
  
  // FUSED Gates
  unsigned const nIndexBits = handler->num_local_qubits;

  for (int i = 1; i < 4; i++) {
    unsigned const nTargets = fgates[i].num_target;
    unsigned const nControls = fgates[i].num_control;
    int const adjoint = 0;
    std::vector<int> targets;
    std::vector<int> controls;

  
    for (int k = 0; k < nTargets; k++) {
      targets.push_back(k);
    }

    //   // apply gate
    custatevecApplyMatrix(
        /* custatevecHandle_t */ handler->statevec,
        /* void* */ state_vector.get_void_ptr(),
        /* cudaDataType_t */ data_type,
        /* const uint32_t */ nIndexBits,
        /* const void* */ fgates[i].matrix,
        /* cudaDataType_t */ data_type,
        /* custatevecMatrixLayout_t */ CUSTATEVEC_MATRIX_LAYOUT_ROW,
        /* const int32_t */ adjoint,
        /* const int32_t* */ targets.data(),
        /* const uint32_t */ nTargets,
        /* const int32_t* */ controls.data(),
        /* const int32_t* */ nullptr,
        /* const uint32_t */ nControls,
        /* custatevecComputeType_t */ compute_type,
        /* void* */ handler->workSpace,
        /* size_t */ handler->workSpaceSize);
  }
  
  // for (int gate_idx=0; gate_idx < info->num_batched_gates; gate_idx++){
  //   if (info->gtype == SHM) break;
  //   // TODO: get target & control qubit idx from current perm[]
  //   Gate<qreal> gate = info->gates[gate_idx];
  //   std::vector<int> targets;
  //   std::vector<int> controls;
    
  //   unsigned const nTargets = gate.num_target;
  //   unsigned const nControls = gate.num_control;
  //   int const adjoint = 0;
  //   // TODO: check if targets should be ordered
  //   printf("Targets: [");
  //   for (int i = 0; i < gate.num_target; i++) {
  //     int idx = 0;
  //     while (info->permutation[idx] != gate.target[i])
  //       idx++;
  //     targets.push_back(idx);
  //     printf("(%d, %d) ", gate.target[i], idx);
  //   }
  //   printf("]\n");

  //   for (int i = 0; i < gate.num_control; i++) {
  //     int idx = 0;
  //     while (info->permutation[idx] != gate.target[i])
  //       idx++;
  //     controls.push_back(idx);
  //   }

  //   // apply gate
  //   custatevecApplyMatrix(
  //       /* custatevecHandle_t */ handler->statevec,
  //       /* void* */ state_vector.get_void_ptr(),
  //       /* cudaDataType_t */ data_type,
  //       /* const uint32_t */ nIndexBits,
  //       /* const void* */ gate.matrix.data(),
  //       /* cudaDataType_t */ data_type,
  //       /* custatevecMatrixLayout_t */ CUSTATEVEC_MATRIX_LAYOUT_ROW,
  //       /* const int32_t */ adjoint,
  //       /* const int32_t* */ targets.data(),
  //       /* const uint32_t */ nTargets,
  //       /* const int32_t* */ controls.data(),
  //       /* const int32_t* */ nullptr,
  //       /* const uint32_t */ nControls,
  //       /* custatevecComputeType_t */ compute_type,
  //       /* void* */ handler->workSpace,
  //       /* size_t */ handler->workSpaceSize);

  //   }
  
}
