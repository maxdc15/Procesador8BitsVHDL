-- Sumador de 8 bits
-- Eduardo Chávez Martín			A01799595
-- Maximiliano De La Cruz Lima	A01798048
-- TE2003B

-- Librerías
library ieee;
use ieee.std_logic_1164.all;

-- Descripción de la entidad
entity SUMA8 is
    port (
			A, B        : in  std_logic_vector(7 downto 0);	-- Entradas
			Cin         : in  std_logic;
			S           : out std_logic_vector(7 downto 0);	-- Salidas
			Cout        : out std_logic;
			OverFlow    : out std_logic
			);
end entity;

-- Descripción de la arquitectura
architecture RTL of SUMA8 is
		 
	-- Componentes utilizados
	component FA is
		port 	(
		A, B, Cin  : in  std_logic;  -- Entradas
		Sum, Cout  : out std_logic   -- Salidas
				);
	end component;
	
	-- Cables de interconexión
	signal C : std_logic_vector(8 downto 1);  -- Bit extra para el carry out final
	
	-- Descripción del circuito
	begin

		FA0 : FA port map (A(0), B(0), Cin,  S(0), C(1));
		FA1 : FA port map (A(1), B(1), C(1), S(1), C(2));
		FA2 : FA port map (A(2), B(2), C(2), S(2), C(3));
		FA3 : FA port map (A(3), B(3), C(3), S(3), C(4));
		FA4 : FA port map (A(4), B(4), C(4), S(4), C(5));
		FA5 : FA port map (A(5), B(5), C(5), S(5), C(6));
		FA6 : FA port map (A(6), B(6), C(6), S(6), C(7));
		FA7 : FA port map (A(7), B(7), C(7), S(7), C(8));

		-- Cout final y OverFlow
		Cout <= C(8);
		OverFlow <= C(7) XOR C(8);

end architecture;
