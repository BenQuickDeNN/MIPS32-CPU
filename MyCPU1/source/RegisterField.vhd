-- Registers Field
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity RegistersField is
	port(W_data:in std_logic_vector(31 downto 0);-- 写入数据
			R_data:out std_logic_vector(31 downto 0);-- 读出数据
			WE:in std_logic;-- 写入使能
			OE:in std_logic;-- 输出使能
			clk:in std_logic;-- 时钟信号
			Reg_addr:in std_logic_vector(4 downto 0)-- 寄存器号选择
			);
end RegistersField;
architecture behav of RegistersField is
	-- definition of word
	subtype word is std_logic_vector(31 downto 0);
	-- definition of registers space
	type register_space is array(0 to 31) of word;
	signal register_space_32: register_space;
	begin
	writePro : process(WE, Reg_addr, clk)
		begin
		if (WE = '1') then
			if (clk = '1' and clk'event) then
				register_space_32(conv_integer(Reg_addr)) <= W_data;
			end if;
		end if;
		
	end process;
	readPro : process(OE, Reg_addr)
	begin
		if (OE = '1') then
				R_data <= register_space_32(conv_integer(Reg_addr));
		else
			R_data <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		end if;
	end process;
end behav;