-- Full Subtractor
-- Eduardo Chávez Martín			A01799595
-- Maximiliano De La Cruz Lima	A01798048
-- TE2003B

-- Librerías
library ieee;
use ieee.std_logic_1164.all;

-- Descripción de la entidad
entity FS is
    port	(
        A, B, Bin  : in  std_logic;		-- Entradas
        Diff, Bout    : out std_logic  -- Salidas: Diff es la diferencia, Bout es el borrow out
			);
end entity;

-- Descripción de la arquitectura
architecture RTL of FS is
    -- Componentes utilizados
    component HS is
        port	(
            A, B       : in  std_logic;   -- Entradas
            Diff, Bout    : out std_logic    -- Salidas
					);
    end component;
    
    -- Cables de interconexión
    signal Bo	: std_logic_vector(1 downto 0);
	 signal D	: std_logic;
    
    -- Descripción del circuito
    begin
        HS0 : HS port map (A, B,   D, 		Bo(0));
        HS1 : HS port map (D, Bin, Diff,  Bo(1));
        
        Bout <= Bo(0) OR Bo(1);
end architecture;
