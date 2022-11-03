// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __hand_num_nn_thetabkb_H__
#define __hand_num_nn_thetabkb_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct hand_num_nn_thetabkb_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 105;
  static const unsigned AddressWidth = 7;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(hand_num_nn_thetabkb_ram) {
        ram[0] = "0b00111110111111001100011111101101";
        ram[1] = "0b10111110110100010010100101100000";
        ram[2] = "0b00111110010001101111011010001101";
        ram[3] = "0b00111111000100111010101111000010";
        ram[4] = "0b10111110101011010100100111101000";
        ram[5] = "0b10111110101111010001001100000000";
        ram[6] = "0b10111110101000110011010100001000";
        ram[7] = "0b00111100100100011011000101111001";
        ram[8] = "0b10111110101010000000001000001100";
        ram[9] = "0b00111100111001010010010010110010";
        ram[10] = "0b00111110101111001010000111001001";
        ram[11] = "0b10111111000010110100100100001101";
        ram[12] = "0b00111110100110110101011101011100";
        ram[13] = "0b10111110100001011101100110011001";
        ram[14] = "0b10111110000010111100010010000000";
        ram[15] = "0b00111111001100100000111100001011";
        ram[16] = "0b00111011101100111100011110000011";
        ram[17] = "0b10111110100010110111010101100110";
        ram[18] = "0b10111111000001011100001101110110";
        ram[19] = "0b10111110010110101010000100011001";
        ram[20] = "0b00111110100000101100011111001101";
        ram[21] = "0b10111101011000111111100111100101";
        ram[22] = "0b00111110010010011010111111001001";
        ram[23] = "0b10111101111111101001111100100111";
        ram[24] = "0b10111111000100000011100010110000";
        ram[25] = "0b00111110101110101111011111000100";
        ram[26] = "0b00111110100011111110000101010010";
        ram[27] = "0b00111110010111101101010001100100";
        ram[28] = "0b10111110111011100101010100101101";
        ram[29] = "0b00111110110101001010010001010010";
        ram[30] = "0b00111110101010110001110110010101";
        ram[31] = "0b10111011111011001111000110000101";
        ram[32] = "0b10111110011100011101000111000110";
        ram[33] = "0b00111110001011001111111100100100";
        ram[34] = "0b00111110100111110011100010100001";
        ram[35] = "0b00111101010010101001010000100000";
        ram[36] = "0b10111100100010011001100110010111";
        ram[37] = "0b00111110001011101000010011111001";
        ram[38] = "0b10111110101100010111101000001010";
        ram[39] = "0b00111110011111010110001010001001";
        ram[40] = "0b00111101001001010100000011001100";
        ram[41] = "0b00111100111000101010011110000000";
        ram[42] = "0b00111110001011010000000111000110";
        ram[43] = "0b10111110110010110011011000010010";
        ram[44] = "0b10111110110010110101110001001011";
        ram[45] = "0b00111110110111011100011101011100";
        ram[46] = "0b00111110000001011010011100010100";
        ram[47] = "0b10111111000000111101001110111000";
        ram[48] = "0b00111110010001010001101101000001";
        ram[49] = "0b10111101111000000111100111101110";
        ram[50] = "0b10111111000011101001010010010100";
        ram[51] = "0b10111110111010001111100100011011";
        ram[52] = "0b10111110110111011100000000111011";
        ram[53] = "0b10111101111010111101011101101100";
        ram[54] = "0b00111110100001111001011001000111";
        ram[55] = "0b10111110100110011001001111000100";
        ram[56] = "0b10111110110100011101010001001011";
        ram[57] = "0b00111110011100111011001001011100";
        ram[58] = "0b10111110111010001110011111001111";
        ram[59] = "0b10111110100100010001011100110011";
        ram[60] = "0b00111111001010001111100111101011";
        ram[61] = "0b10111110010011100110110101001110";
        ram[62] = "0b00111110011011110100001100011001";
        ram[63] = "0b10111111001010011010111100001100";
        ram[64] = "0b10111101110000110100101111011110";
        ram[65] = "0b00111110100101100000100111010011";
        ram[66] = "0b00111110101010100100000110100100";
        ram[67] = "0b00111110011011100000101101001000";
        ram[68] = "0b10111011111000010110111000000100";
        ram[69] = "0b10111100101110110000100001101010";
        ram[70] = "0b00111110011001110011000110011111";
        ram[71] = "0b00111110011101110110100101101100";
        ram[72] = "0b10111100011001110101001001001010";
        ram[73] = "0b10111110101010000101110111110101";
        ram[74] = "0b10111110100110100010110000010101";
        ram[75] = "0b10111110001111100100110010101100";
        ram[76] = "0b10111101001101110011010100111001";
        ram[77] = "0b10111110100010000111110000110110";
        ram[78] = "0b10111110010001110010110011001010";
        ram[79] = "0b00111110101100010101010110100110";
        ram[80] = "0b10111110010110111101000111100110";
        ram[81] = "0b00111110101000010000000111010011";
        ram[82] = "0b00111110010101110011101001101011";
        ram[83] = "0b10111110011101010111110011000100";
        ram[84] = "0b00111110000000010110110111110010";
        ram[85] = "0b10111101110111010111111100010111";
        ram[86] = "0b10111110001001000011111110001001";
        ram[87] = "0b00111110010011110000001110100111";
        ram[88] = "0b10111111000000110111000110111101";
        ram[89] = "0b10111110100000010110011111010001";
        ram[90] = "0b00111110011101011011001000000100";
        ram[91] = "0b10111110101111010101101000011110";
        ram[92] = "0b00111100111010110010011100100110";
        ram[93] = "0b00111110110011000110111100110000";
        ram[94] = "0b00111111000000111111101110010100";
        ram[95] = "0b00111110110111001111111101010111";
        ram[96] = "0b00111101011101111011110001100101";
        ram[97] = "0b00111110001111100100001001100110";
        ram[98] = "0b00111100100100001000100011111111";
        ram[99] = "0b00111011001001101101001001100111";
        ram[100] = "0b10111100001101010011100011011100";
        ram[101] = "0b10111110000100011001111000110010";
        ram[102] = "0b00111101100001110001001110110100";
        ram[103] = "0b00111111000000000100110101111011";
        ram[104] = "0b00111101011101011010001101100000";


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


SC_MODULE(hand_num_nn_thetabkb) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 105;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


hand_num_nn_thetabkb_ram* meminst;


SC_CTOR(hand_num_nn_thetabkb) {
meminst = new hand_num_nn_thetabkb_ram("hand_num_nn_thetabkb_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~hand_num_nn_thetabkb() {
    delete meminst;
}


};//endmodule
#endif
