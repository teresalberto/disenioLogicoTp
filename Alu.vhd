

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu is
    Port ( 
	op: in  std_logic_vector (2 downto 0);
	a,b : in  std_logic_vector (7 downto 0);
	s : out  std_logic_vector (7 downto 0));
end alu;

architecture ealu of alu is

begin 

  process (op)
  begin
	case op is
        when "000" =>
          s <= a;
	 when "001" =>
          s <= a(6 downto 0) & '0';
	 when "010" =>
          s <= a+b;
	 when "011" =>
          s <= a-b;
	 when "100" =>
          s <= a and b;
	 when "101" =>
          s <= a or b;
	 when "110" =>
          s <= a xor b;
        --corresponde a: "111"
      	when others =>
          s <= '0' & a(7 downto 1);
	end case;
  end process; 
end ealu;

-- ================