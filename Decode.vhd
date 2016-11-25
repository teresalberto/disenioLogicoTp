
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity decode is
    Port ( 
	input : in  std_logic_vector (7 downto 0);
	out_we : out  std_logic;
	reg_we : out  std_logic;
	alu_op : out  std_logic_vector (2 downto 0);
	reg_a_we: out  std_logic;
	bus_sel : out  std_logic_vector (1 downto 0));
end decode;

architecture edecode of decode is

begin 

  process (input)
  begin
	case input is
        when "00000001" =>
          bus_sel <= "10";
          alu_op <= "000";
          reg_a_we <= '0';
          out_we <= '0';
          reg_we <= '1';
        when "00000010" =>
          bus_sel <= "00";
          alu_op <= "000";
          reg_a_we <= '0';
          out_we <= '1';
          reg_we <= '0';
        when "00000011" =>
          bus_sel <= "00";
          alu_op <= "000";
          reg_a_we <= '0';
          out_we <= '0';
          reg_we <= '1';
        when "00000100" =>
          bus_sel <= "00";
          alu_op <= "000";
          reg_a_we <= '1';
          out_we <= '0';
          reg_we <= '0';
        when "00000101" =>
          bus_sel <= "01";
          alu_op <= "000";
          reg_a_we <= '1';
          out_we <= '0';
          reg_we <= '0';
        when "00001010" =>
          bus_sel <= "00";
          alu_op <= "010";
          reg_a_we <= '0';
          out_we <= '0';
          reg_we <= '1';
        when "00001011" =>
          bus_sel <= "00";
          alu_op <= "011";
          reg_a_we <= '0';
          out_we <= '0';
          reg_we <= '1';
        when "00001100" =>
          bus_sel <= "00";
          alu_op <= "100";
          reg_a_we <= '0';
          out_we <= '0';
          reg_we <= '1';
        when "00001101" =>
          bus_sel <= "00";
          alu_op <= "101";
          reg_a_we <= '0';
          out_we <= '0';
          reg_we <= '1';
        when "00001110" =>
          bus_sel <= "00";
          alu_op <= "110";
          reg_a_we <= '0';
          out_we <= '0';
          reg_we <= '1';
        when "00010100" =>
          bus_sel <= "00";
          alu_op <= "001";
          reg_a_we <= '0';
          out_we <= '0';
          reg_we <= '1';
        --corresponde a: "00010101"
      	when others =>
          bus_sel <= "00";
          alu_op <= "111";
          reg_a_we <= '0';
          out_we <= '0';
          reg_we <= '1';
	end case;
  end process; 
end edecode;

-- ================

