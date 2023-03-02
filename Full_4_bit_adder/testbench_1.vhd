library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench_1 is 
end; 

architecture sim of testbench_1 is 

	component full_adder_4bit is
    port(a: in std_logic_vector(3 downto 0);
         b: in std_logic_vector(3 downto 0);
         cin: in std_logic;
         sum: out std_logic_vector(3 downto 0);
         cout: out std_logic);
end component;

signal a: std_logic_vector(3 downto 0);
signal b: std_logic_vector(3 downto 0);
signal cin: std_logic;
signal sum: std_logic_vector(3 downto 0);
signal cout: std_logic;

begin 
	dut: full_adder_4bit port map(a,b,cin,sum,cout);
	process begin 

a(0)<='1'; a(1)<= '1'; a(2)<='1'; a(3)<= '1'; b(0)<='1'; b(1)<='1'; b(2)<='1'; b(3)<='1'; cin<='1'; wait for 10 ns;	
	end process; 
end;