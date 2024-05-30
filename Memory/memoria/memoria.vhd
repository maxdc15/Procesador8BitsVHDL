-- Memoria del procesador de 8 bits
-- Maximiliano De La Cruz Lima	A01798048
-- TE2003B

-- Librerías
library ieee;
use ieee.std_logic_1164.all;

-- Descripción de la entidad
entity memoria is
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
			p_out_12, p_out_13, p_out_14, p_out_15	:	out std_logic_vector(7 downto 0));
end entity;

-- Descripción de la arquitectura
architecture arc of memoria is
	
	-- Descripción de los componentes
	
		-- Descripción del componente mem_programa
		component mem_programa is
			port (CLK		:	in std_logic;							-- Entradas
					address	:	in std_logic_vector(6 downto 0);	-- Salidas
					data_out	: out std_logic_vector(7 downto 0));
		end component;
		
		-- Descripción del componente mem_datos
		component mem_datos is
			port (CLK, WR	:	in	std_logic;							-- Entradas
					address	:	in	std_logic_vector(6 downto 0);	-- Salidas
					data_in	:	in	std_logic_vector(7 downto 0);
					data_out	: out std_logic_vector(7 downto 0));
		end component;
		
		-- Descripción del componente puertos_salida
		component puertos_salida is
			port (CLK,RST,WR	:	in std_logic;																	-- Entradas
					address		:	in	std_logic_vector(3 downto 0);
					data_in		:	in std_logic_vector(7 downto 0);
					p_out_00, p_out_01, p_out_02, p_out_03	:	out std_logic_vector(7 downto 0);	-- Salidas
					p_out_04, p_out_05, p_out_06, p_out_07	:	out std_logic_vector(7 downto 0);
					p_out_08, p_out_09, p_out_10, p_out_11	:	out std_logic_vector(7 downto 0);
					p_out_12, p_out_13, p_out_14, p_out_15	:	out std_logic_vector(7 downto 0));
		end component;
		
		-- Cables de interconexión
		signal rom_out, ram_out 			: 	std_logic_vector(7 downto 0);
		signal output_port_addr 			: 	std_logic_vector(3 downto 0);
		signal ram_address, rom_address	:	std_logic_vector(6 downto 0);
		
		-- Descripción del circuito
		begin

			rom_address <=	address(6 downto 0) when (address(7) = '0') else "0000000";
			ram_address <=	address(6 downto 0) when (address(7) = '1') else "0000000";
			output_port_addr	<=	address(3 downto 0) when (address(7 downto 4) = x"F") else "0000";
			
			mem_prog	:	mem_programa	port map (	CLK, rom_address, rom_out	);
			mem_dato	:	mem_datos		port map	(	CLK, WR, ram_address, data_in, ram_out	);
			puertos	:	puertos_salida	port map (	CLK, RST, WR, output_port_addr, data_in,
																p_out_00, p_out_01, p_out_02, p_out_03,
																p_out_04, p_out_05, p_out_06, p_out_07,
																p_out_08, p_out_09, p_out_10, p_out_11,
																p_out_12, p_out_13, p_out_14, p_out_15);
				
			-- Multiplexor
			data_out	<=	rom_out	when	address < x"80" else
							ram_out	when	address < x"E0" else
							p_in_00	when	address = x"E0" else
							p_in_01	when	address = x"E1" else
							p_in_02	when	address = x"E2" else
							p_in_03	when	address = x"E3" else
							p_in_04	when	address = x"E4" else
							p_in_05	when	address = x"E5" else
							p_in_06	when	address = x"E6" else
							p_in_07	when	address = x"E7" else
							p_in_08	when	address = x"E8" else
							p_in_09	when	address = x"E9" else
							p_in_10	when	address = x"EA" else
							p_in_11	when	address = x"EB" else
							p_in_12	when	address = x"EC" else
							p_in_13	when	address = x"ED" else
							p_in_14	when	address = x"EE" else
							p_in_15	when	address = x"EF" else
							x"00";

end architecture;
