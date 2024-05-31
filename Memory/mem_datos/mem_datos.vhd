-- Memoria ROM para el procesador de 8 bits
-- Maximiliano De La Cruz Lima	A01798048
-- TE2003B

-- Librerías
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Descripción de la entidad
entity mem_datos is
	port (CLK, WR	:	in	std_logic;							-- Entradas
			address	:	in	std_logic_vector(6 downto 0);	-- Salidas
			data_in	:	in	std_logic_vector(7 downto 0);
			data_out	: out std_logic_vector(7 downto 0));
end entity;

-- Descripción de la arquitectura
architecture arc of mem_datos is
	
	type mem_dato is array (0 to 95) of std_logic_vector (7 downto 0);
	signal RAM	:	mem_dato	:= (
		x"0B", x"00", x"01", x"00",	-- 0x80:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0x84: (vacío)
		x"00", x"00", x"00", x"00",	-- 0x88:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0x8C:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0x90:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0x94:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0x98:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0x9C:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0xA0:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0xA4:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0xA8:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0xAC:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0xB0:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0xB4:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0xB8:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0xBC:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0xC0:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0xC4:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0xC8:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0xCC:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0xD0:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0xD4:	(vacío)
		x"00", x"00", x"00", x"00",	-- 0xD8:	(vacío)
		x"00", x"00", x"00", x"00");	-- 0xDC:	(vacío)
		
		begin
			process (CLK)
				begin
					if (CLK'event and CLK = '1') then
						if (WR = '1') then
							RAM(conv_integer(unsigned(address)))	<=	data_in;
						else
							data_out	<=	RAM(conv_integer(unsigned(address)));
						end if;
					end if;
			end process;
	
end architecture;
