// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __hand_num_nn_thetaeOg_H__
#define __hand_num_nn_thetaeOg_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct hand_num_nn_thetaeOg_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 30;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(hand_num_nn_thetaeOg_ram) {
        ram[0] = "0b10111100001011011101101000101110";
        ram[1] = "0b10111100011011111011011011111101";
        ram[2] = "0b00000000000000000000000000000000";
        ram[3] = "0b10111110111111101000011000000101";
        ram[4] = "0b10111110111010110101010010011110";
        ram[5] = "0b00111110110111011111011011100010";
        ram[6] = "0b10111110111111101010111111000011";
        ram[7] = "0b00111110110111111011111110001110";
        ram[8] = "0b10111110111010000000010010101101";
        ram[9] = "0b00000000000000000000000000000000";
        ram[10] = "0b10111110111010001100111000011110";
        ram[11] = "0b00111111001011010011010110001111";
        ram[12] = "0b10111110110011000101111100111010";
        ram[13] = "0b00111111000000000001110010000000";
        ram[14] = "0b00111110111001100011111110000011";
        ram[15] = "0b00000000000000000000000000000000";
        ram[16] = "0b10111100110100001100010111010110";
        ram[17] = "0b10111110111010010110001100111000";
        ram[18] = "0b00000000000000000000000000000000";
        ram[19] = "0b00000000000000000000000000000000";
        ram[20] = "0b10111111000001010010010011111001";
        ram[21] = "0b00111111000101111111000011010000";
        ram[22] = "0b00111110111101010100111000101100";
        ram[23] = "0b10111100010000010111001110101000";
        ram[24] = "0b10111100111110101010110110110001";
        ram[25] = "0b00000000000000000000000000000000";
        ram[26] = "0b10111110110111100111100110010100";
        ram[27] = "0b00111111000111010110011110011101";
        ram[28] = "0b10111110111000001111011011000110";
        ram[29] = "0b10111110110101010100011101111110";


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


SC_MODULE(hand_num_nn_thetaeOg) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 30;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


hand_num_nn_thetaeOg_ram* meminst;


SC_CTOR(hand_num_nn_thetaeOg) {
meminst = new hand_num_nn_thetaeOg_ram("hand_num_nn_thetaeOg_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~hand_num_nn_thetaeOg() {
    delete meminst;
}


};//endmodule
#endif
