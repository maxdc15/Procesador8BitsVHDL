-- Puertos de salidas para un módulo de memoria
-- Maximiliano De La Cruz Lima	A01798048
-- TE2003B

-- Librerías
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Descripción de la entidad
entity puertos_salida is
	port (CLK,RST,WR	:	in std_logic;																	-- Entradas
			address		:	in	std_logic_vector(3 downto 0);
			data_in		:	in std_logic_vector(7 downto 0);
			p_out_00, p_out_01, p_out_02, p_out_03	:	out std_logic_vector(7 downto 0);	-- Salidas
			p_out_04, p_out_05, p_out_06, p_out_07	:	out std_logic_vector(7 downto 0);
			p_out_08, p_out_09, p_out_10, p_out_11	:	out std_logic_vector(7 downto 0);
			p_out_12, p_out_13, p_out_14, p_out_15	:	out std_logic_vector(7 downto 0));
end entity;

-- Descripción de la arquitectura
architecture arc of puertos_salida is

	type mem_dato is array (0 to 15) of std_logic_vector (7 downto 0);
	signal RAM:	mem_dato:= (x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",	-- 0x00 - 0x07: (vacío)
									x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00");	-- 0x08 - 0x15: (vacío)
									
	begin
		process(CLK, RST)
			begin
				if (RST = '0') then	-- en caso de RESET, los puertos sacan 0
					RAM(0)	<=	x"00";
					RAM(1)	<=	x"00";
					RAM(2)	<=	x"00";
					RAM(3)	<=	x"00";
					RAM(4)	<=	x"00";
					RAM(5)	<=	x"00";
					RAM(6)	<=	x"00";
					RAM(7)	<=	x"00";
					RAM(8)	<=	x"00";
					RAM(9)	<=	x"00";
					RAM(10)	<=	x"00";
					RAM(11)	<=	x"00";
					RAM(12)	<=	x"00";
					RAM(13)	<=	x"00";
					RAM(14)	<=	x"00";
					RAM(15)	<=	x"00";
				elsif(CLK'event and CLK = '1') then
					if (WR = '1') then
						RAM(conv_integer(unsigned(address)))	<=	data_in;
					end if;
				end if;
		end process;
		
		p_out_00	<=	RAM(0);
		p_out_01	<=	RAM(1);
		p_out_02	<=	RAM(2);
		p_out_03	<=	RAM(3);
		p_out_04	<=	RAM(4);
		p_out_05	<=	RAM(5);
		p_out_06	<=	RAM(6);
		p_out_07	<=	RAM(7);
		p_out_08	<=	RAM(8);
		p_out_09	<=	RAM(9);
		p_out_10	<=	RAM(10);
		p_out_11	<=	RAM(11);
		p_out_12	<=	RAM(12);
		p_out_13	<=	RAM(13);
		p_out_14	<=	RAM(14);
		p_out_15	<=	RAM(15);
		
end architecture;
