
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity rom is
    Port ( 
	addr : in  std_logic_vector (6 downto 0);
	output : out  std_logic_vector (15 downto 0));
end rom;

architecture erom of rom is

begin 

process(addr)
begin
	case addr is
		--0: IN r3	01-3-0
		when "0000000" =>
		output <= "0000000100110000";
		--1: LDA r3	04-0-3
		when "0000001" =>
		output <= "0000010000000011";
		--2: ADD r4,r3	10-4-3
		when "0000010" =>
		output <= "0000101001000011";
		--3: SUB r5,r4	11-5-4
		when "0000011" =>
		output <= "0000101101010100";
		--4: OR r6,r4	13-6-4
		when "0000100" =>
		output <= "0000110101100100";
		--5: AND r7,r0	12-7-0
		when "0000101" =>
		output <= "0000110001110000";
		--6: MOV r14,r4	3-14-4
		when "0000110" =>
		output <= "0000001111100100";
		--7: OUT r3	02-0-3
		when "0000111" =>
		output <= "0000001000000011";
		--8: OUT r4	02-0-4
		when "0001000" =>
		output <= "0000001000000100";
		--9: OUT r5	02-0-5
		when "0001001" =>
		output <= "0000001000000101";
		--10: OUT r6	02-0-6
		when "0001010" =>
		output <= "0000001000000110";
		--11: OUT r7	02-0-7
		when "0001011" =>
		output <= "0000001000000111";
		--12: OUT r8	02-0-8
		when "0001100" =>
		output <= "0000001000001000";
		--13: OUT r13	02-0-13
		when "0001101" =>
		output <= "0000001000001101";
		--14: OUT r14	02-0-14
		when "0001110" =>
		output <= "0000001000001110";
		when others =>	output <= "0000001000001110";
	end case;
end process;
end erom;

-- ================
