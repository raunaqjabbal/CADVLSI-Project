// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xhand_num_nn.h"

extern XHand_num_nn_Config XHand_num_nn_ConfigTable[];

XHand_num_nn_Config *XHand_num_nn_LookupConfig(u16 DeviceId) {
	XHand_num_nn_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XHAND_NUM_NN_NUM_INSTANCES; Index++) {
		if (XHand_num_nn_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XHand_num_nn_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XHand_num_nn_Initialize(XHand_num_nn *InstancePtr, u16 DeviceId) {
	XHand_num_nn_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XHand_num_nn_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XHand_num_nn_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

