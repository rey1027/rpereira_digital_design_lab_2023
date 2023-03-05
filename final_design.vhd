library IEEE; use IEEE.STD_LOGIC_1164.all;

entity final_design is 
	port(a,b: in std_logic_vector(3 downto 0); --Entradas de los switches 
		  cin: in STD_LOGIC; --El carry de entrada
		  cout: out STD_LOGIC; --El carry de salida
		  seg7: out std_logic_vector(6 downto 0)); --La salida de los 7 segmentos del display
end;

architecture final_design_1 of final_design is
 
signal sum: std_logic_vector(3 downto 0); --La señal de sumatoria
signal seg7_1 : std_logic_vector(6 downto 0); 
begin
	full_4bit_adder0: entity work.full_adder_4bit port map(a=>a,b=>b,cin=>cin,sum=>sum,cout=>cout); --El sumador
	
	drv_7seg: entity work.to_7seg port map(A=>sum,seg7=>seg7_1); --El display de 7 segmentos 
	
	seg7<= seg7_1;
end final_design_1;