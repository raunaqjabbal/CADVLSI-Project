-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.1
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity hand_num_nn_thetaeOg_rom is 
    generic(
             dwidth     : integer := 32; 
             awidth     : integer := 5; 
             mem_size    : integer := 30
    ); 
    port (
          addr0      : in std_logic_vector(awidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(dwidth-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of hand_num_nn_thetaeOg_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100001011011101101000101110", 
    1 => "10111100011011111011011011111101", 
    2 => "00000000000000000000000000000000", 
    3 => "10111110111111101000011000000101", 
    4 => "10111110111010110101010010011110", 
    5 => "00111110110111011111011011100010", 
    6 => "10111110111111101010111111000011", 
    7 => "00111110110111111011111110001110", 
    8 => "10111110111010000000010010101101", 
    9 => "00000000000000000000000000000000", 
    10 => "10111110111010001100111000011110", 
    11 => "00111111001011010011010110001111", 
    12 => "10111110110011000101111100111010", 
    13 => "00111111000000000001110010000000", 
    14 => "00111110111001100011111110000011", 
    15 => "00000000000000000000000000000000", 
    16 => "10111100110100001100010111010110", 
    17 => "10111110111010010110001100111000", 
    18 to 19=> "00000000000000000000000000000000", 
    20 => "10111111000001010010010011111001", 
    21 => "00111111000101111111000011010000", 
    22 => "00111110111101010100111000101100", 
    23 => "10111100010000010111001110101000", 
    24 => "10111100111110101010110110110001", 
    25 => "00000000000000000000000000000000", 
    26 => "10111110110111100111100110010100", 
    27 => "00111111000111010110011110011101", 
    28 => "10111110111000001111011011000110", 
    29 => "10111110110101010100011101111110" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity hand_num_nn_thetaeOg is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 30;
        AddressWidth : INTEGER := 5);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of hand_num_nn_thetaeOg is
    component hand_num_nn_thetaeOg_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    hand_num_nn_thetaeOg_rom_U :  component hand_num_nn_thetaeOg_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


