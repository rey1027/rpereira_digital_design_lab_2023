library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity to_7seg is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
          seg7 : out  STD_LOGIC_VECTOR (6 downto 0)
             );
end to_7seg;

architecture Behavioral of to_7seg is

begin

--'a' corresponds to MSB of seg7 and 'g' corresponds to LSB of seg7.
process (A)
BEGIN
    case A is
        when "0000"=> seg7 <="1000000";  -- '0'
		  
        when "0001"=> seg7 <="1111001";  -- '1'
		  
        when "0010"=> seg7 <="0100100";  -- '2'
		  
        when "0011"=> seg7 <="0110000";  -- '3'
		  
        when "0100"=> seg7 <="0011001";  -- '4'
		  
        when "0101"=> seg7 <="0010010";  -- '5'
		  
        when "0110"=> seg7 <="0000010";  -- '6'
		  
        when "0111"=> seg7 <="1111000";  -- '7'
		  
        when "1000"=> seg7 <="0000000";  -- '8'
		  
        when "1001"=> seg7 <="0010000";  -- '9'
		  
        when "1010"=> seg7 <="0001000";  -- 'A'
		  
        when "1011"=> seg7 <="0000011";  -- 'b'
		  
        when "1100"=> seg7 <="1000110";  -- 'C'
		  
        when "1101"=> seg7 <="0100001";  -- 'd'
		  
        when "1110"=> seg7 <="0000110";  -- 'E'
		  
        when "1111"=> seg7 <="0001110";  -- 'F'
        when others =>  NULL;
    end case;
end process;

end Behavioral;