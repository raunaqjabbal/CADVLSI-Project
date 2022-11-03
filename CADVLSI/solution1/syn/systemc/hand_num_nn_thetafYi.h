// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __hand_num_nn_thetafYi_H__
#define __hand_num_nn_thetafYi_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct hand_num_nn_thetafYi_ram : public sc_core::sc_module {

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


   SC_CTOR(hand_num_nn_thetafYi_ram) {
        ram[0] = "0b10111101111110010001101100011010";
        ram[1] = "0b10111110000111001011100110010000";
        ram[2] = "0b00111110110000010100000001111110";
        ram[3] = "0b00111111010001011101011101011100";
        ram[4] = "0b00111111011001011101111000001111";
        ram[5] = "0b10111111000110001111010110000001";
        ram[6] = "0b00111111100100101010011110000110";
        ram[7] = "0b10111110110100111011011011000111";
        ram[8] = "0b00111111110001111100111111111100";
        ram[9] = "0b10111110110010100011011001110001";
        ram[10] = "0b00111111100011110110110100000110";
        ram[11] = "0b10111111011011010110010011010010";
        ram[12] = "0b00111111100011101011110110111010";
        ram[13] = "0b10111111100010000111011110000100";
        ram[14] = "0b10111111000011010001110110101100";
        ram[15] = "0b00111110100110000010111110000000";
        ram[16] = "0b10111110100001011011010000010011";
        ram[17] = "0b00111111011100000110001100010001";
        ram[18] = "0b10111110100010010100001010000100";
        ram[19] = "0b10111110101000011010010101000100";
        ram[20] = "0b00111111100010111111010101111011";
        ram[21] = "0b10111111010011010000001101111100";
        ram[22] = "0b10111110011100110010100101000010";
        ram[23] = "0b00111110101110011101011010001000";
        ram[24] = "0b10111011111001010000111000100010";
        ram[25] = "0b10111110110111000011001000000000";
        ram[26] = "0b00111111011110111010010111101010";
        ram[27] = "0b10111111100001100000100101010001";
        ram[28] = "0b01000000000110010101010110000001";
        ram[29] = "0b00111111111000000000001111111000";


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


SC_MODULE(hand_num_nn_thetafYi) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 30;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


hand_num_nn_thetafYi_ram* meminst;


SC_CTOR(hand_num_nn_thetafYi) {
meminst = new hand_num_nn_thetafYi_ram("hand_num_nn_thetafYi_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~hand_num_nn_thetafYi() {
    delete meminst;
}


};//endmodule
#endif