-- Restador de 8 bits
-- Eduardo Chávez Martín			A01799595
-- Maximiliano De La Cruz Lima	A01798048
-- TE2003B

-- Librería
library ieee;
use ieee.std_logic_1164.all;

-- Descripción de la entidad
entity RESTA8 is
    port (
			A, B		: in  std_logic_vector(7 downto 0);	-- Entradas
			Bin			: in  std_logic;
			Diff		: out std_logic_vector(7 downto 0);	-- Salidas
			Bout		: out std_logic;
			OverFlow	: out std_logic
			);
end entity;

-- Descripción de la arquitectura
architecture RTL of RESTA8 is			
   
	-- Componentes utililizados
	component FS is
      port	(
         A, B, Bin  : in  std_logic;	-- Entradas
         Diff, Bout    : out std_logic	-- Salidas
				);
   end component;

	-- Cables de interconexión
	signal Bo : std_logic_vector(8 downto 1);  -- Bit extra para el borrow final

	-- Descripción del circuito
	begin

		-- Manual chaining of full subtractors
		FS0 : FS port map (A(0), B(0), Bin,   Diff(0), Bo(1));
		FS1 : FS port map (A(1), B(1), Bo(1), Diff(1), Bo(2));
		FS2 : FS port map (A(2), B(2), Bo(2), Diff(2), Bo(3));
		FS3 : FS port map (A(3), B(3), Bo(3), Diff(3), Bo(4));
		FS4 : FS port map (A(4), B(4), Bo(4), Diff(4), Bo(5));
		FS5 : FS port map (A(5), B(5), Bo(5), Diff(5), Bo(6));
		FS6 : FS port map (A(6), B(6), Bo(6), Diff(6), Bo(7));
		FS7 : FS port map (A(7), B(7), Bo(7), Diff(7), Bo(8));

		-- Set output borrow and overflow
		Bout <= Bo(8);
		OverFlow <= Bo(7) XOR Bo(8);  -- Overflow condition for subtraction

end architecture;
