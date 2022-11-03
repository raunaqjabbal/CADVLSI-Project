// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __hand_num_nn_thetacud_H__
#define __hand_num_nn_thetacud_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct hand_num_nn_thetacud_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 15;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(hand_num_nn_thetacud_ram) {
        ram[0] = "0b10111111001001010011100010100010";
        ram[1] = "0b00000000000000000000000000000000";
        ram[2] = "0b10111100101011000011011100000000";
        ram[3] = "0b00111111001100111100010010110110";
        ram[4] = "0b10111110101110000110101110100110";
        ram[5] = "0b00111111001111001100110100100110";
        ram[6] = "0b00111111001110101101100000100011";
        ram[7] = "0b00111111000101111011011101100000";
        ram[8] = "0b00000000000000000000000000000000";
        ram[9] = "0b00111111001001000011111110010001";
        ram[10] = "0b10111111000101001110100001101001";
        ram[11] = "0b10111101011001011100101001100010";
        ram[12] = "0b10111111000100010011000011010100";
        ram[13] = "0b00000000000000000000000000000000";
        ram[14] = "0b00000000000000000000000000000000";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(hand_num_nn_thetacud) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 15;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


hand_num_nn_thetacud_ram* meminst;


SC_CTOR(hand_num_nn_thetacud) {
meminst = new hand_num_nn_thetacud_ram("hand_num_nn_thetacud_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~hand_num_nn_thetacud() {
    delete meminst;
}


};//endmodule
#endif
