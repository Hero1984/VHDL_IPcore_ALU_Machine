library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_2x1 is
    Port ( S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           Y : out std_logic
           );
end MUX_2x1;

architecture Behavioral of MUX_2x1 is
begin

--"ADD/SUB" or "S0/S1"
-- "00" => null
-- "10" => '1' 
-- "01" => '0'
-- "11" => null
process(S0,S1) --always need sensitvity list
begin
    if S0 = '0' and  s1='1' then 
        Y <= '0';
    elsif S0 = '1' and  s1='0' then 
        Y <= '1';
    else
        null;
    end if;
end process;
end Behavioral;
