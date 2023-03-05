library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_design_adder_bit is
    port(
	 SWO: in std_logic;
	 SW1: in std_logic;
	 SW2: in std_logic;
	 SW3: in std_logic;
	 SW4: in std_logic;
	 SW5: in std_logic;
	 SW6: in std_logic;
	 SW7: in std_logic;
	 SW8: in std_logic;
	 hex_display_out : out std_logic_vector(6 downto 0)
	 );
end top_design_adder_bit;

architecture design of top_design_adder_bit is 

component full_adder_4bit is
    port(a: in std_logic_vector(3 downto 0);
         b: in std_logic_vector(3 downto 0);
         cin: in std_logic;
         sum: out std_logic_vector(3 downto 0);
         cout: out std_logic);
end component;

signal sum_2 : std_logic_vector(3 downto 0);
--Inicio de procesos
begin
map_1: full_adder_4bit port map (a(0)=> SWO,a(1)=> SW1,a(2)=> SW2,a(3)=> SW3,b(0)=> SW4,b(1)=> SW5,b(2)=> SW6,b(3)=> SW7,cin => SW8);
end architecture design;
			
	


 
