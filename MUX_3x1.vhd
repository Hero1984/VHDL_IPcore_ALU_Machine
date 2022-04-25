library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_Std.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_3x1 is
    Port ( I0 : in std_logic_vector(15 downto 0);
           I1 : in std_logic_vector(15 downto 0);
           I2 : in std_logic_vector(15 downto 0);
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           S2 : in STD_LOGIC;
           S3 : in STD_logic;
           Y : out std_logic_vector(15 downto 0)
           );
end MUX_3x1;

architecture Behavioral of MUX_3x1 is
    signal temp : std_ulogic_vector(3 downto 0); --"S0123"
begin
    temp <= S0 & S1 & S2 & S3;
process(temp,I0,I1,I2,S0,S1,S2,S3)
begin
case temp is
   when "1000" => 
        Y <= I0;
   when "0100" =>
        Y <= I0;
   when "0010" =>
        Y <= I1;
      when "0001" =>
        Y <= I2;
   when others =>
        null;
end case;

end process;
end Behavioral;
