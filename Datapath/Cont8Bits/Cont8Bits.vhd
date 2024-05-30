-- Contador (8 bits)
-- Eduardo Chávez Martín			A01799595
-- Maximiliano De La Cruz Lima	A01798048
-- TE2003B

-- Librerías
library ieee;
use ieee.std_logic_1164.all;

-- Desripción de la entidad
entity Cont8Bits IS
	port	(
			A	: in	std_logic_vector(7 downto 0);
			Z	: out	std_logic_vector(7 downto 0)
			);
end entity;

-- Desripción de la arquitectura
architecture RTL of CONt8Bits is
	
	-- Componentes utilizados
	component HA is
		port (
			  A, B       : in  std_logic;   -- Entradas
			  Sum, Cout  : out std_logic    -- Salidas
				);
	end component;
	
	-- Cables de interconexión
	signal C : std_logic_vector (7 downto 1);
	
	-- Desripción del circuito
	begin
	
		I0 : HA port map ( A(0), '1',  Z(0), C(1) );
		I1 : HA port map ( A(1), C(1), Z(1), C(2) );
		I2 : HA port map ( A(2), C(2), Z(2), C(3) );
		I3 : HA port map ( A(3), C(3), Z(3), C(4) );
		I4 : HA port map ( A(4), C(4), Z(4), C(5) );
		I5 : HA port map ( A(5), C(5), Z(5), C(6) );
		I6 : HA port map ( A(6), C(6), Z(6), C(7) );
		I7 : HA port map ( A(7), C(7), Z(7), open );
	
end architecture;
