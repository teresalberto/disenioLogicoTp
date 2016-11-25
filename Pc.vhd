library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pc is
    Port ( 
	output : out  std_logic_vector (6 downto 0);
	clk : in  std_logic;
	rst : in  std_logic);
end pc;

architecture epc of pc is
	signal temp: std_logic_vector(6 downto 0):= "0000000";

begin 

  process(clk,rst)
  begin
--manejo de senial intermedio
	if (rst='1') then
	--//¿asi me toma 8bits? 
		temp <= (others => '0');
	elsif (rising_edge(clk) and clk='1') then
		temp <= temp +1;
	end if;	
  end process; 
  output <= std_logic_vector(temp);
end epc;

-- ================

