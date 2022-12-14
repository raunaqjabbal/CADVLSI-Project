set C_TypeInfoList {{ 
"hand_num_nn" : [[], {"return": [[], {"scalar": "float"}] }, [{"ExternC" : 0}], [ {"X": [[], {"array": [ {"scalar": "float"}, [7]]}] }, {"y": [[], {"scalar": "int"}] }],[],""]
}}
set moduleName hand_num_nn
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {hand_num_nn}
set C_modelType { float 32 }
set C_modelArgList {
	{ X float 32 regular {bram 7 { 1 3 } 1 1 }  }
	{ y int 32 unused {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "X", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "X","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 6,"step" : 1}]}]}]} , 
 	{ "Name" : "y", "interface" : "axi_slave", "bundle":"CRTL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "y","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"CRTL_BUS","type":"ap_none","bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}], "offset" : {"out":16}} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ X_Addr_A sc_out sc_lv 32 signal 0 } 
	{ X_EN_A sc_out sc_logic 1 signal 0 } 
	{ X_WEN_A sc_out sc_lv 4 signal 0 } 
	{ X_Din_A sc_out sc_lv 32 signal 0 } 
	{ X_Dout_A sc_in sc_lv 32 signal 0 } 
	{ X_Clk_A sc_out sc_logic 1 signal 0 } 
	{ X_Rst_A sc_out sc_logic 1 signal 0 } 
	{ s_axi_CRTL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CRTL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CRTL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CRTL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CRTL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CRTL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CRTL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CRTL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "AWADDR" },"address":[{"name":"hand_num_nn","role":"start","value":"0","valid_bit":"0"},{"name":"hand_num_nn","role":"continue","value":"0","valid_bit":"4"},{"name":"hand_num_nn","role":"auto_start","value":"0","valid_bit":"7"},{"name":"y","role":"data","value":"24"}] },
	{ "name": "s_axi_CRTL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CRTL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CRTL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CRTL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CRTL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CRTL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CRTL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "ARADDR" },"address":[{"name":"hand_num_nn","role":"start","value":"0","valid_bit":"0"},{"name":"hand_num_nn","role":"done","value":"0","valid_bit":"1"},{"name":"hand_num_nn","role":"idle","value":"0","valid_bit":"2"},{"name":"hand_num_nn","role":"ready","value":"0","valid_bit":"3"},{"name":"hand_num_nn","role":"auto_start","value":"0","valid_bit":"7"},{"name":"return","role":"data","value":"16"}] },
	{ "name": "s_axi_CRTL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CRTL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CRTL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CRTL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CRTL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CRTL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CRTL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CRTL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CRTL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTL_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "X_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X", "role": "Addr_A" }} , 
 	{ "name": "X_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X", "role": "EN_A" }} , 
 	{ "name": "X_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "X", "role": "WEN_A" }} , 
 	{ "name": "X_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X", "role": "Din_A" }} , 
 	{ "name": "X_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X", "role": "Dout_A" }} , 
 	{ "name": "X_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X", "role": "Clk_A" }} , 
 	{ "name": "X_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X", "role": "Rst_A" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "hand_num_nn",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6949", "EstimateLatencyMax" : "6949",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"Port" : [
			{"Name" : "X", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"},
			{"Name" : "theta1h1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "theta1b2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "theta2h3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "theta2b4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "theta3h5", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.theta1h1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.theta1b2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.theta2h3_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.theta2b4_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.theta3h5_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hand_num_nn_CRTL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h1_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h2_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hand_num_nn_fadd_g8j_U1", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hand_num_nn_fmul_hbi_U2", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hand_num_nn_fptruibs_U3", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hand_num_nn_fpextjbC_U4", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hand_num_nn_fcmp_kbM_U5", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hand_num_nn_dadd_lbW_U6", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hand_num_nn_ddiv_mb6_U7", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hand_num_nn_dexp_ncg_U8", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hand_num_nn {
		X {Type I LastRead 3 FirstWrite -1}
		y {Type I LastRead -1 FirstWrite -1}
		theta1h1 {Type I LastRead -1 FirstWrite -1}
		theta1b2 {Type I LastRead -1 FirstWrite -1}
		theta2h3 {Type I LastRead -1 FirstWrite -1}
		theta2b4 {Type I LastRead -1 FirstWrite -1}
		theta3h5 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6949", "Max" : "6949"}
	, {"Name" : "Interval", "Min" : "6950", "Max" : "6950"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	X { bram {  { X_Addr_A mem_address 1 32 }  { X_EN_A mem_ce 1 1 }  { X_WEN_A mem_we 1 4 }  { X_Din_A mem_din 1 32 }  { X_Dout_A mem_dout 0 32 }  { X_Clk_A mem_clk 1 1 }  { X_Rst_A mem_rst 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
