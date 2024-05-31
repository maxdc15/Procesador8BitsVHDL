-- Top level del procesador de 8 bits ejecutando la secuencia de Fibonacci
-- Maximiliano De La Cruz Lima	A01798048
-- TE2003B

-- Librerías
library ieee;
use ieee.std_logic_1164.all;

-- Descripción de la entidad
entity Fibonacci is
	port (
			CLK, RST										: in	std_logic;
			p_in_00, p_in_01, p_in_02, p_in_03	: in 	std_logic_vector(7 downto 0);
			p_in_04, p_in_05, p_in_06, p_in_07	: in 	std_logic_vector(7 downto 0);
			p_in_08, p_in_09, p_in_10, p_in_11	: in 	std_logic_vector(7 downto 0);
			p_in_12, p_in_13, p_in_14, p_in_15	: in 	std_logic_vector(7 downto 0);
			OUTPUT										: out	std_logic_vector(13 downto 0)
			);
end entity;

-- Descripción de la arquitectura
architecture RTL of Fibonacci is
	
	-- Componentes utilizados
	
		-- Divisor de frecuencia
		component Cont24Bits is	-- Realmente de 16 bits
			port (
					CLK, RST : in std_logic;	-- Entradas
					OVER : out std_logic			-- Salidas
					);			
		end component;
		
		-- Procesador de 8 Bits
		component Procesador is
			port (
			CLK, RST	: in	std_logic;
			p_in_00, p_in_01, p_in_02, p_in_03		:	in std_logic_vector(7 downto 0);
			p_in_04, p_in_05, p_in_06, p_in_07		:	in std_logic_vector(7 downto 0);
			p_in_08, p_in_09, p_in_10, p_in_11		:	in std_logic_vector(7 downto 0);
			p_in_12, p_in_13, p_in_14, p_in_15		:	in std_logic_vector(7 downto 0);
			p_out_00, p_out_01, p_out_02, p_out_03	:	out std_logic_vector(7 downto 0);
			p_out_04, p_out_05, p_out_06, p_out_07	:	out std_logic_vector(7 downto 0);
			p_out_08, p_out_09, p_out_10, p_out_11	:	out std_logic_vector(7 downto 0);
			p_out_12, p_out_13, p_out_14, p_out_15	:	out std_logic_vector(7 downto 0)
			);
		end component;
		
		-- Codificador para la salida en displays de 7 segmentos
		component FiboCoder is
			port (
					input		: in	std_logic_vector(7 downto 0);	-- Entradas
					output	: out	std_logic_vector(13 downto 0)	-- Salidas
					);
		end component;
		
	-- Señales internas
	signal CLOCK : std_logic;
	signal SEC : std_logic_vector(7 downto 0);
		
	-- Descripción de la arquitectura
	
	begin
	
		DivFrec		: Cont24Bits	port map ( CLK, RST, CLOCK );
		Pros			: Procesador 	port map ( CLOCK, RST, 
														p_in_00, p_in_01, p_in_02, p_in_03, p_in_04, p_in_05, p_in_06, p_in_07, p_in_08, p_in_09, p_in_10, p_in_11, p_in_12, p_in_13, p_in_14, p_in_15,
														OPEN, OPEN, SEC, OPEN, OPEN, OPEN, OPEN, OPEN, OPEN, OPEN, OPEN, OPEN, OPEN, OPEN, OPEN, OPEN );
		Coder			: FiboCoder		port map ( SEC, OUTPUT );
	
end architecture;
