
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity regs is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           we : in  STD_LOGIC;
           rd : in  STD_LOGIC_VECTOR (3 downto 0);
           rs : in  STD_LOGIC_VECTOR (3 downto 0);
           din : in  STD_LOGIC_VECTOR (7 downto 0);
           dout : out  STD_LOGIC_VECTOR (7 downto 0));
end regs;

architecture registers_table_arq of regs is

  constant reg_tam : INTEGER := 16;
  type mem is array(reg_tam-1 downto 0) of STD_LOGIC_VECTOR(7 downto 0);
  signal reg: mem;
  
begin 

  process (clk,rst)
  begin
-- acá reseteo todo -flanco ascendente- y con un loop mando a cero todo el bco
    if rst= '1' then
      for i in 0 to reg_tam-1 loop
        reg(i) <= (others => '0');
      end loop; 
-- aca con flanco ascendente y habilitada la escritura
    elsif (clk'event and clk = '1') then
--y habilitada escritura
      if (we = '1') then
--ahi recien guarda dato de entrada de din en reg (en la posicion rd)
        reg(conv_integer(rd)) <= din;
      end if;
    end if; 
  end process; 
--lectura: de la senial reg levanto la posicion rs y la meto en puerto de salida
-- rs es stdlogic vector y lo debo recorrer como entero al reg
dout <= reg(conv_integer(rs)); 


end registers_table_arq;


