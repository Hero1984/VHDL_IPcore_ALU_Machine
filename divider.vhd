library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divider is
    Port ( A : in std_logic_vector(7 downto 0);
           B : in std_logic_vector(7 downto 0);
           C : out std_logic_vector(7 downto 0); --Quotient
           D : out std_logic_vector(7 downto 0) --remeinder
           );
end divider;

architecture Behavioral of divider is

    signal temp_C : unsigned(7 downto 0);
    signal temp_D : unsigned(7 downto 0);

begin
process(A,B)
begin
    temp_C <=  unsigned(A)/unsigned(B); --C <= A/B;
    temp_D <=  unsigned(A) mod unsigned(B); --D <= A mod B;
    C <= std_logic_vector(temp_C);
    D <= std_logic_vector(temp_D);
end process;
end Behavioral;