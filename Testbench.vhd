
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_unsigned.ALL;
use ieee.std_logic_arith.ALL;

entity testbenchDecode is
end testbenchDecode;

architecture testDecode of testbenchDecode is 
	component decode 
	port ( 
		input : in  std_logic_vector (7 downto 0);
		out_we : out  std_logic;
		reg_we : out  std_logic;
		alu_op : out  std_logic_vector (2 downto 0);
		reg_a_we: out  std_logic;
		bus_sel : out  std_logic_vector (1 downto 0));
	end component;
	
	signal decode_out_regout: std_logic;
	signal decode_out_regs: std_logic;
	signal decode_out_alu: std_logic_vector(2 downto 0);
	signal decode_out_rega: std_logic;
	signal decode_out_mux: std_logic_vector(1 downto 0);
	signal ir_out: std_logic_vector(7 downto 0);

begin 
	uut: decode port map( 
	input => ir_out,
	out_we => decode_out_regout,
	reg_we => decode_out_regs,
	alu_op => decode_out_alu,
	reg_a_we => decode_out_rega,
	bus_sel => decode_out_mux);
 
  	process
  		begin
			ir_out <= "00000001";
			wait for 10ns;
			assert decode_out_mux = "10" report "no corresponde a la config del decode" severity failure;
          		wait for 10ns;
			assert decode_out_alu = "000" report "no corresponde a la config del decode" severity failure;
          		wait for 10ns;
			assert decode_out_rega = '0' report "no corresponde a la config del decode" severity failure;
          		wait for 10ns;
			assert decode_out_regout = '0' report "no corresponde a la config del decode" severity failure;
          		wait for 10ns;
			assert decode_out_regs = '1' report "no corresponde a la config del decode" severity failure;
  	end process; 
end testDecode;
