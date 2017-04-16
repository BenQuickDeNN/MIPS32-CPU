library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_textio.all;
use std.textio.all;

entity SRAM is
	port(address, data_in: in std_logic_vector(31 downto 0);
			write1, read1, oe, cs, clk, boot: in std_logic;
			ready : out std_logic;-- �ڴ�׼����
			data_out: out std_logic_vector(31 downto 0);
			test_data_out : out std_logic_vector(31 downto 0));
end SRAM;
architecture behave of SRAM is

-- definition of word
subtype word is std_logic_vector(31 downto 0);
-- definition of memory space
type memory_space is array(0 to 255) of word;
signal memory_space_256 : memory_space;

-- ��������ļ�
file ProgramFile : text;

begin
	-- ���ļ�������ָ��ڴ�
	pushInstructionPro : process(boot, write1, clk, cs)-- �����ź�Ϊ�����ź�
	variable INST_FILE_STATUS : FILE_OPEN_STATUS;-- �ļ���״̬
	variable file_buff : line;
	variable file_buff_vector : std_logic_vector(31 downto 0);
	begin
		if(boot = '1' and not(write1 = '1'))then
			file_open(INST_FILE_STATUS, ProgramFile, "TestPrograme.txt", read_mode);-- ���ļ�
			PUSH_LOOP: for i in 0 to 127 loop
				readline(ProgramFile, file_buff);
				read(file_buff, file_buff_vector);
				memory_space_256(i) <= file_buff_vector;-- ���ļ��е����ݸ����ڴ�
			end loop PUSH_LOOP;
		elsif (write1 = '1' and boot = '0') then
				if (cs = '1') then
					if (clk = '1' and clk'event) then
						ready <= '0';
						memory_space_256(conv_integer(address(7 downto 0))) <= data_in;
						ready <= '1';
					end if;
				end if;
		end if;
	end process pushInstructionPro;

	--ready <= '1';
	test_data_out <= memory_space_256(0);
	
	
	-- ������
	readPro : process(oe, read1, address, cs)
	begin
		if(read1 = '1') then
			if (oe = '1') then
				if (cs = '1') then
					ready <= '0';
					data_out <= memory_space_256(conv_integer(address(7 downto 0)));
					ready <= '1';
				else
					data_out <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
				end if;
			else
				data_out <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
			end if;
		else
			data_out <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		end if;
	end process;
	
end behave;