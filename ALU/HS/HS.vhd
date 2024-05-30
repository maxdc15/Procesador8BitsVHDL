-- Half Subtractor
-- Eduardo Chávez Martín			A01799595
-- Maximiliano De La Cruz Lima	A01798048
-- TE2003B

-- Librerías
library ieee;
use ieee.std_logic_1164.all;

-- Descripción de la entidad
entity HS is
    port	(
			A, B       : in  std_logic;	-- Entradas
			Diff, Bout    : out std_logic	-- Salidas: D es la diferencia, Bout es el borrow out
			);
end entity;

-- Descripción de la arquitectura
architecture RTL of HS is 
begin
    -- Diferencia
    Diff	<= A XOR B;
    
    -- Borrow out
    Bout <= NOT A AND B;
end architecture;
