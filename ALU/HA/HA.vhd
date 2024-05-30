-- Half Adder
-- Eduardo Chávez Martín			A01799595
-- Maximiliano De La Cruz Lima	A01798048
-- TE2003B

-- Librerías
library ieee;
use ieee.std_logic_1164.all;

-- Descripción de la entidad
entity HA is
    port (
        A, B       : in  std_logic;   -- Entradas
        Sum, Cout  : out std_logic    -- Salidas
			);
end entity;

-- Descripción de la arquitectura
architecture RTL of HA is 
begin
    -- Suma
    Sum  <= A XOR B;
    
    -- Carry out
    Cout <= A AND B;
end architecture;
