library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
    port(g: in std_logic;
         h: in std_logic;
			i: in std_logic; 
         z: out std_logic);
end or_gate;

architecture synth of or_gate is

begin 
	z<= (g or h or i);
end;