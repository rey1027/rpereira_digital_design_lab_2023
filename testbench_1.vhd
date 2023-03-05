library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench_1 is 
end; 

architecture sim of testbench_1 is 

--Componente final 

component final_design is 
	port(a,b: in STD_LOGIC_VECTOR(3 downto 0); --Entradas de los switches 
		  cin: in STD_LOGIC; --El carry de entrada
		  cout: out STD_LOGIC; --El carry de salida
		  seg7: out STD_LOGIC_VECTOR(6 downto 0)); --La salida de los 7 segmentos del display
end component;


signal a: std_logic_vector(3 downto 0);
signal b: std_logic_vector(3 downto 0);
signal cin: std_logic;
signal cout: std_logic;
signal seg7: std_logic_vector(6 downto 0);
--signal sum: std_logic_vector(3 downto 0);


begin 
	dut: final_design port map(a,b,cin,cout,seg7);
	process begin 

a(0)<='1'; a(1)<= '1'; a(2)<='1'; a(3)<= '1'; b(0)<='1'; b(1)<='1'; b(2)<='1'; b(3)<='1'; cin<='1'; wait for 10 ns;	
	end process; 
end;