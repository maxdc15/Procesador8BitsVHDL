-- Program Counter
-- Eduardo Chávez Martín			A01799595
-- Maximiliano De La Cruz Lima	A01798048
-- TE2003B

-- Librerías
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Descripción de la entidad
entity PC is
   port (
			CLK     : in std_logic;
			RST     : in std_logic;
			PC_inc  : in std_logic;
			PC_load : in std_logic;
			B2      : in std_logic_vector(7 downto 0);
			PC_out  : out std_logic_vector(7 downto 0)
			);
end PC;

-- Descripción de la arquitectura
architecture RTL of PC is

    -- Componentes utilizados
    component Cont8Bits is
        port	(
					A : in  std_logic_vector(7 downto 0);
					Z : out std_logic_vector(7 downto 0)
					);
    end component;

    -- Señales internas
    signal cuenta            : std_logic_vector(7 downto 0);
    signal cuenta_incremented: std_logic_vector(7 downto 0);
    signal load_val          : std_logic_vector(7 downto 0);
    signal inc_signal        : std_logic_vector(7 downto 0);

	begin

		-- Control del valor a incrementar
		process (PC_inc, cuenta)
		begin
			if PC_inc = '1' then
				inc_signal <= (others => '1');  -- incrementar en 1
			else
				inc_signal <= (others => '0');
			end if;
		end process;

	-- Instancia del contador para manejar incrementos
	Contador: Cont8Bits port map (cuenta, cuenta_incremented);

		-- Proceso de selección de entrada y salida
		process (CLK, RST)
		begin
			if (RST = '0') then
				cuenta <= (others => '0');
			elsif (CLK'event and CLK = '1') then
				if PC_load = '1' then
					cuenta <= B2;
				elsif PC_inc = '1' then
					cuenta <= cuenta_incremented;
				end if;
			end if;
		end process;

		-- Salida del contador
		PC_out	<=	cuenta;

end architecture;
