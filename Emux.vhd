
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux is
    Port ( 
	sel : in  std_logic_vector (1 downto 0);
        a : in  std_logic_vector (7 downto 0);
        b : in  std_logic_vector (7 downto 0);
        c : in  std_logic_vector (7 downto 0);
        salida : out  std_logic_vector (7 downto 0));
end mux;

architecture emux of mux is
begin

process(a,b,c,sel)
begin
	case sel is
		when "00" =>
		salida <= a;
		when "01" =>
		salida <= b;
		when others =>	salida <= c;
	end case;
end process;
end emux;

-- ================
