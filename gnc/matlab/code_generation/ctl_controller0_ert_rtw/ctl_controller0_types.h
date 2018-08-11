//
// File: ctl_controller0_types.h
//
// Code generated for Simulink model 'ctl_controller0'.
//
// Model version                  : 1.1142
// Simulink Coder version         : 8.11 (R2016b) 25-Aug-2016
// C/C++ source code generated on : Wed Jan 31 12:32:36 2018
//
// Target selection: ert.tlc
// Embedded hardware selection: 32-bit Generic
// Code generation objectives: Unspecified
// Validation result: Not run
//
#ifndef RTW_HEADER_ctl_controller0_types_h_
#define RTW_HEADER_ctl_controller0_types_h_
#include "rtwtypes.h"
#ifndef DEFINED_TYPEDEF_FOR_cmc_state_cmd_
#define DEFINED_TYPEDEF_FOR_cmc_state_cmd_

typedef struct {
  uint32_T timestamp_sec;
  uint32_T timestamp_nsec;
  real32_T P_B_ISS_ISS[3];
  real32_T V_B_ISS_ISS[3];
  real32_T A_B_ISS_ISS[3];
  real32_T quat_ISS2B[4];
  real32_T omega_B_ISS_B[3];
  real32_T alpha_B_ISS_B[3];
} cmc_state_cmd;

#endif

#ifndef DEFINED_TYPEDEF_FOR_ctl_input_msg_
#define DEFINED_TYPEDEF_FOR_ctl_input_msg_

typedef struct {
  real32_T est_quat_ISS2B[4];
  real32_T est_omega_B_ISS_B[3];
  real32_T est_V_B_ISS_ISS[3];
  real32_T est_P_B_ISS_ISS[3];
  uint8_T est_confidence;
  cmc_state_cmd cmd_state_a;
  cmc_state_cmd cmd_state_b;
  uint8_T ctl_mode_cmd;
  uint32_T current_time_sec;
  uint32_T current_time_nsec;
  uint8_T speed_gain_cmd;
  real32_T att_kp[3];
  real32_T att_ki[3];
  real32_T omega_kd[3];
  real32_T pos_kp[3];
  real32_T pos_ki[3];
  real32_T vel_kd[3];
  real32_T inertia_matrix[9];
  real32_T mass;
} ctl_input_msg;

#endif

#ifndef DEFINED_TYPEDEF_FOR_cmd_msg_
#define DEFINED_TYPEDEF_FOR_cmd_msg_

typedef struct {
  uint32_T cmd_timestamp_sec;
  uint32_T cmd_timestamp_nsec;
  uint8_T cmd_mode;
  uint8_T speed_gain_cmd;
  uint8_T cmd_B_inuse;
  real32_T traj_pos[3];
  real32_T traj_vel[3];
  real32_T traj_accel[3];
  real32_T traj_quat[4];
  real32_T traj_omega[3];
  real32_T traj_alpha[3];
} cmd_msg;

#endif

#ifndef DEFINED_TYPEDEF_FOR_ctl_msg_
#define DEFINED_TYPEDEF_FOR_ctl_msg_

typedef struct {
  real32_T body_force_cmd[3];
  real32_T body_accel_cmd[3];
  real32_T pos_err[3];
  real32_T pos_err_int[3];
  real32_T body_torque_cmd[3];
  real32_T body_alpha_cmd[3];
  real32_T att_err[3];
  real32_T att_err_mag;
  real32_T att_err_int[3];
  uint8_T ctl_status;
  real32_T traj_error_pos;
  real32_T traj_error_att;
  real32_T traj_error_vel;
  real32_T traj_error_omega;
} ctl_msg;

#endif

#ifndef DEFINED_TYPEDEF_FOR_ex_time_msg_
#define DEFINED_TYPEDEF_FOR_ex_time_msg_

typedef struct {
  uint32_T timestamp_sec;
  uint32_T timestamp_nsec;
} ex_time_msg;

#endif

// Parameters for system: '<S18>/Normalize'
typedef struct P_Normalize_ctl_controller0_T_ P_Normalize_ctl_controller0_T;

// Parameters for system: '<S113>/CoreSubsys'
typedef struct P_CoreSubsys_ctl_controller0_T_ P_CoreSubsys_ctl_controller0_T;

// Parameters for system: '<S5>/For Each Subsystem'
typedef struct P_ForEachSubsystem_ctl_contro_T_ P_ForEachSubsystem_ctl_contro_T;

// Parameters (auto storage)
typedef struct P_ctl_controller0_T_ P_ctl_controller0_T;

// Forward declaration for rtModel
typedef struct tag_RTM_ctl_controller0_T RT_MODEL_ctl_controller0_T;

#endif                                 // RTW_HEADER_ctl_controller0_types_h_

//
// File trailer for generated code.
//
// [EOF]
//