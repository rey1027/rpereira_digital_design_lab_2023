library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is
    port(k: in std_logic;
         d: in std_logic;
			e: in std_logic; 
         f: out std_logic);
end xor_gate;

architecture synth of xor_gate is

begin 
	f<= (k xor d xor e);
end;