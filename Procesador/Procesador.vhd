-- Procesador de 8 bits
-- Eduardo Chávez Martín			A01799595
-- Maximiliano De La Cruz Lima	A01798048
-- TE2003B

-- Librerías
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Descripción del procesador
entity Procesador is
	port (
			CLK, RST	: in	std_logic;
			p_in_00, p_in_01, p_in_02, p_in_03		:	in std_logic_vector(7 downto 0);
			p_in_04, p_in_05, p_in_06, p_in_07		:	in std_logic_vector(7 downto 0);
			p_in_08, p_in_09, p_in_10, p_in_11		:	in std_logic_vector(7 downto 0);
			p_in_12, p_in_13, p_in_14, p_in_15		:	in	std_logic_vector(7 downto 0);
			p_out_00, p_out_01, p_out_02, p_out_03	:	out std_logic_vector(7 downto 0);
			p_out_04, p_out_05, p_out_06, p_out_07	:	out std_logic_vector(7 downto 0);
			p_out_08, p_out_09, p_out_10, p_out_11	:	out std_logic_vector(7 downto 0);
			p_out_12, p_out_13, p_out_14, p_out_15	:	out std_logic_vector(7 downto 0)
			);
end entity;

-- Descripción de la arquitectura
architecture RTL of Procesador is
	
	-- Componentes utilizados
		-- Componente Memoria
		component memoria is
			port (CLK, RST, WR									:	in	std_logic;							-- Entradas
					address											:	in std_logic_vector(7 downto 0);
					data_in											:	in	std_logic_vector(7 downto 0);
					p_in_00, p_in_01, p_in_02, p_in_03		:	in std_logic_vector(7 downto 0);
					p_in_04, p_in_05, p_in_06, p_in_07		:	in std_logic_vector(7 downto 0);
					p_in_08, p_in_09, p_in_10, p_in_11		:	in std_logic_vector(7 downto 0);
					p_in_12, p_in_13, p_in_14, p_in_15		:	in std_logic_vector(7 downto 0);
					data_out											: out std_logic_vector(7 downto 0);	-- Salidas
					p_out_00, p_out_01, p_out_02, p_out_03	:	out std_logic_vector(7 downto 0);
					p_out_04, p_out_05, p_out_06, p_out_07	:	out std_logic_vector(7 downto 0);
					p_out_08, p_out_09, p_out_10, p_out_11	:	out std_logic_vector(7 downto 0);
					p_out_12, p_out_13, p_out_14, p_out_15	:	out std_logic_vector(7 downto 0)
					);
		end component;
		
		-- Componente CPU
		component CPU is
			port (
					CLK, RST		: in	std_logic;
					From_Memory	: in	std_logic_vector(7 downto 0);
					WR				: out	std_logic;
					Address		: out std_logic_vector(7 downto 0);
					To_Memory	: out std_logic_vector(7 downto 0)
					);
		end component;
		
	-- Señales internas
	signal address, Data1, Data2 : std_logic_vector(7 downto 0);
	signal WR : std_logic;
	
	begin
	
		CPU0	: CPU			port map	( CLK, RST, DATA1, WR, address, DATA2 );
		MEM0	: memoria	port map ( CLK, RST, WR, address, DATA2, p_in_00, p_in_01, p_in_02, p_in_03, p_in_04, p_in_05, 
											p_in_06, p_in_07, p_in_08, p_in_09, p_in_10, p_in_11, p_in_12, p_in_13, p_in_14, p_in_15,
											DATA1, p_out_00, p_out_01, p_out_02, p_out_03, p_out_04, p_out_05, p_out_06, p_out_07, 
											p_out_08, p_out_09, p_out_10, p_out_11, p_out_12, p_out_13, p_out_14, p_out_15 );
end architecture;
