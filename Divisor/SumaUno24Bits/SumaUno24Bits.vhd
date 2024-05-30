-- Sumador de un un bit (+1) en una cadena de 24 bits con 23 half adders e indicador de Overflow
-- Autor: Maximiliano De La Cruz Lima	A01798048
-- Curso: TE2002B

-- Librerías
library ieee;
use ieee.std_logic_1164.all;

-- Definición de Entidad
entity SumaUno24Bits is
	
	port ( A  : in std_logic_vector (15 downto 0);	-- Entradas
			 OVER : out std_logic;							-- Salidas
			 Z  : out std_logic_vector(15 downto 0) );
	
end entity;

-- Definición de la arquitectura
architecture RTL of SumaUno24Bits is
	
	-- Definición de los componentes
	
		-- Definición del uso del componente HA:
		
		component HA is							-- Componente HA

			port (A, B : in std_logic;			-- Entradas
					Sum, Cout : out std_logic);	-- Salidas
				
		end component;
	
	-- Definición cables de interconexión:

	signal C 	: std_logic_vector (16 downto 1);
	
	-- Descripción del circuito:
	
	begin
	
		I0  : HA port map ( A(0), '1',  Z(0), C(1)	);
		I1  : HA port map ( A(1), C(1), Z(1), C(2)	);
		I2  : HA port map ( A(2), C(2), Z(2), C(3)	);
		I3  : HA port map ( A(3), C(3), Z(3), C(4)	);
		I4  : HA port map ( A(4), C(4), Z(4), C(5)	);
		I5  : HA port map ( A(5), C(5), Z(5), C(6)	);
		I6  : HA port map ( A(6), C(6), Z(6), C(7)	);
		I7  : HA port map ( A(7), C(7), Z(7), C(8)	);
		I8  : HA port map ( A(8), C(8), Z(8), C(9)	);
		I9  : HA port map ( A(9), C(9), Z(9), C(10)	);
		I10 : HA port map ( A(10), C(10), Z(10), C(11) );
		I11 : HA port map ( A(11), C(11), Z(11), C(12) );
		I12 : HA port map ( A(12), C(12), Z(12), C(13) );
		I13 : HA port map ( A(13), C(13), Z(13), C(14) );
		I14 : HA port map ( A(14), C(14), Z(14), C(15) );
		I15 : HA port map ( A(15), C(15), Z(15), C(16) );
		
		OVER <= A(15) xor C(15);

	
end architecture;
