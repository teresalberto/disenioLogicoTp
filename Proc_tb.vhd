
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_unsigned.ALL;
use ieee.std_logic_arith.ALL;

entity testbenchProc is
end testbenchProc;

architecture testProc of testbenchProc is 
	component Proc 
	port ( 
		clk, rst: in std_logic;
		input : in  std_logic_vector (7 downto 0);
         	output : out  std_logic_vector (7 downto 0));
	end component;
	
signal clock, reset: std_logic; 
signal input_out_2mux: std_logic_vector(7 downto 0);
signal regout_out_output: std_logic_vector(7 downto 0);




begin 
	uut: Proc port map( 
	clk => clock,
        rst => reset,
	input => input_out_2mux,
	output => regout_out_output);
 
  	process
  		begin
			clock <= '0';
			wait for 10ns;
			assert pc_out_rom = "00000000" report "primera instrucción";
			wait for 10ns;
      			clock <= '1';
			wait for 10ns;
  	end process; 
end testProc;
