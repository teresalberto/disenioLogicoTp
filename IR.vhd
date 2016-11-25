
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity IR is
    Port ( 
	input : in  std_logic_vector (15 downto 0);
	output : out  std_logic_vector (15 downto 0);
	--//Secuenciales
	clk : in  std_logic;
	rst : in  std_logic;
	we : in  std_logic);
end IR;

architecture registroIR of IR is

begin 

  process (clk,rst)
  begin
-- acá reseteo todo -flanco ascendente- y con un loop mando a cero todo el bco
    if rst= '1' then
	output <= (others => '0');
-- aca con flanco ascendente y habilitada la escritura
    elsif (clk'event and clk = '1') then
--y habilitada escritura
      if (we = '1') then
        output <= input;
      end if;
    end if; 
  end process; 
end registroIR;

