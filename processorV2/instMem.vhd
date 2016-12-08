library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity instMem is
    Port ( addr : in  STD_LOGIC_VECTOR (31 downto 0);
           inst : out  STD_LOGIC_VECTOR (31 downto 0));
end instMem;

architecture Behavioral of instMem is

type instMem is array (0 to 63) of std_logic_vector (31 downto 0);

-- Sample Program 2
signal procInstMem : instMem:= ("00000100000000010000000000000010", "00000100000000110000000000001010",
											"00000100000001000000000000001110", "00000100000001010000000000000010",
											"00100000011001000000000000000010", "00100000011000110000000000000001",
											"00000000011001000010000000010001", "00001000000001000000000000000001",
											"00000000011000100010000000010010", "00001100010001000000000000001010",
											"00000000011000100010000000010011", "00011100011000100000000000000001",
											"00010000010001000000000000001010", "00000000011000100010000000010100",
											"00010100010001000000000000001010", "00011000010001000000000000001010",
											"00101000000001011111111111111110", "00100100100001010000000000000000",
											"00101100100001010000000000000000", "00110000000000000000000000010100",
											"11111100000000000000000000000000", others => (others => '0'));

---- Code 2
--signal procInstMem : instMem:= (X"00000011",X"1C010001",X"1C220001",X"1C030003",X"1C040004",X"00222810",X"00643011",X"0463002E",X"08A50010",X"00653812",X"0C6800FF",X"006848D3",X"10EA00FF",X"014758D4",X"156C0001",X"198D0003",X"24010001",X"1C1F0001",X"2C020001",X"1C1E0002",X"28000001",X"1C1D0003",X"20050003",X"30000001", others => (others => '0'));

-- Sample Program 1
--signal procInstMem : instMem:= ("00000100000000010000000000000111", "00000100000000100000000000001000",
--											"00000000010000010001100000010000", "11111100000000000000000000000000",
--											others => (others => '0'));

begin

inst <= procInstMem(conv_integer(addr));

end Behavioral;