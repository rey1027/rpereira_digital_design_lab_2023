library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bitadder is
    port(a: in std_logic;
         b: in std_logic;
         cin: in std_logic;
         sum: out std_logic;
         cout: out std_logic);
end bitadder;

architecture struct of bitadder is
	 signal c1, c2, c3: std_logic;
	 
    component xor_gate
        port(k: in std_logic;
             d: in std_logic;
				 e: in std_logic; 
             f: out std_logic);
    end component;
	 
    
    component and_gate 
        port(a: in std_logic;
             b: in std_logic;
             y: out std_logic);
    end component;
	 
	 component or_gate 
        port(g: in std_logic;
             h: in std_logic;
				 i: in std_logic;
             z: out std_logic);
		end component;

    

begin

    xor1: xor_gate port map(a,b,cin,sum);
    and1: and_gate port map(a,b,c1);
    and2: and_gate port map(a,cin,c2);
    and3: and_gate port map(b,cin,c3);
	 or1:  or_gate  port map(c1,c2,c3,cout);   

end;
