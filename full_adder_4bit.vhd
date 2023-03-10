library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_4bit is
    port(a: in std_logic_vector(3 downto 0);
         b: in std_logic_vector(3 downto 0);
         cin: in std_logic;
         sum: out std_logic_vector(3 downto 0);
         cout: out std_logic);
end full_adder_4bit;

architecture struct of full_adder_4bit is

    component bitadder is
        port(a: in std_logic;
             b: in std_logic;
             cin: in std_logic;
             sum: out std_logic;
             cout: out std_logic);
    end component;

    signal c: std_logic_vector(3 downto 0);
    signal s: std_logic_vector(3 downto 0);

begin

    fa0: bitadder port map(a(0), b(0), cin, s(0), c(0));
    fa1: bitadder port map(a(1), b(1), c(0), s(1), c(1));
    fa2: bitadder port map(a(2), b(2), c(1), s(2), c(2));
    fa3: bitadder port map(a(3), b(3), c(2), s(3), cout);

    sum <= s;

end struct;
