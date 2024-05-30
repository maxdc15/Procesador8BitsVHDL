-- Codificador de la secuencia de Fibonacci a displays de 7 segmentos
-- Maximiliano De La Cruz Lima	A01798048
-- TE2003B

-- Librerías
library ieee;
use ieee.std_logic_1164.all;

-- Descripción de la entidad
entity FiboCoder is
	port (
			input		: in	std_logic_vector(7 downto 0);	-- Entradas
			output	: out	std_logic_vector(13 downto 0)	-- Salidas
			);
end entity;

-- Descripción de la arquitectura
architecture RTL of FiboCoder is
	
	begin
	
		with input select
			
				output	<=	"10000001000000" when x"00",	-- 00
								"10000001111001" when x"01",	-- 01
								"10000000100100" when x"02",	-- 02
								"10000000110000" when x"03",	-- 03
								"10000000010010" when x"05",	-- 05
								"10000000000000" when x"08",	-- 08
								"11110010110000" when x"0D",	-- 13
								"01001001111001" when x"15",	-- 21
								"01100000011001" when x"22",	-- 34
								"00100100010010" when x"37",	-- 55
								"00000000010000" when x"59",	-- 89
								"11111111111111" when others;	-- nulo
	
end architecture;
