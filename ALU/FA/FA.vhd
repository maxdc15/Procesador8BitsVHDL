-- Full Adder
-- Eduardo Chávez Martín			A01799595
-- Maximiliano De La Cruz Lima	A01798048
-- TE2003B

-- Librería
library ieee;
use ieee.std_logic_1164.all;

-- Descripción de la entidad
entity FA is
    port 	(
        A, B, Cin  : in  std_logic;  -- Entradas
        Sum, Cout  : out std_logic   -- Salidas
				);
end entity;

-- Descripción de la arquitectura
architecture RTL of FA is
   -- Componentes utilizados
	component HA is
	  port	(
			A, B       : in  std_logic;   -- Entradas
			Sum, Cout  : out std_logic    -- Salidas
				);
	end component;
	
	-- Cables de interconexión
	signal C   : std_logic_vector(1 downto 0);
	signal S   : std_logic;
	
	-- Descripción del circuito
	begin
	
	  HA0 : HA port map (A, B,   S,   C(0));
	  HA1 : HA port map (S, Cin, Sum, C(1));
	  
	  Cout <= C(0) OR C(1);
end architecture;
