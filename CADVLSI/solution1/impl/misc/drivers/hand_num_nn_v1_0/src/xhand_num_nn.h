// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XHAND_NUM_NN_H
#define XHAND_NUM_NN_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xhand_num_nn_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Crtl_bus_BaseAddress;
} XHand_num_nn_Config;
#endif

typedef struct {
    u32 Crtl_bus_BaseAddress;
    u32 IsReady;
} XHand_num_nn;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XHand_num_nn_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XHand_num_nn_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XHand_num_nn_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XHand_num_nn_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XHand_num_nn_Initialize(XHand_num_nn *InstancePtr, u16 DeviceId);
XHand_num_nn_Config* XHand_num_nn_LookupConfig(u16 DeviceId);
int XHand_num_nn_CfgInitialize(XHand_num_nn *InstancePtr, XHand_num_nn_Config *ConfigPtr);
#else
int XHand_num_nn_Initialize(XHand_num_nn *InstancePtr, const char* InstanceName);
int XHand_num_nn_Release(XHand_num_nn *InstancePtr);
#endif

void XHand_num_nn_Start(XHand_num_nn *InstancePtr);
u32 XHand_num_nn_IsDone(XHand_num_nn *InstancePtr);
u32 XHand_num_nn_IsIdle(XHand_num_nn *InstancePtr);
u32 XHand_num_nn_IsReady(XHand_num_nn *InstancePtr);
void XHand_num_nn_EnableAutoRestart(XHand_num_nn *InstancePtr);
void XHand_num_nn_DisableAutoRestart(XHand_num_nn *InstancePtr);
u32 XHand_num_nn_Get_return(XHand_num_nn *InstancePtr);

void XHand_num_nn_Set_y(XHand_num_nn *InstancePtr, u32 Data);
u32 XHand_num_nn_Get_y(XHand_num_nn *InstancePtr);

void XHand_num_nn_InterruptGlobalEnable(XHand_num_nn *InstancePtr);
void XHand_num_nn_InterruptGlobalDisable(XHand_num_nn *InstancePtr);
void XHand_num_nn_InterruptEnable(XHand_num_nn *InstancePtr, u32 Mask);
void XHand_num_nn_InterruptDisable(XHand_num_nn *InstancePtr, u32 Mask);
void XHand_num_nn_InterruptClear(XHand_num_nn *InstancePtr, u32 Mask);
u32 XHand_num_nn_InterruptGetEnabled(XHand_num_nn *InstancePtr);
u32 XHand_num_nn_InterruptGetStatus(XHand_num_nn *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
