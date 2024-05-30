-- Contador de 24 bits mediante aritmética digital
-- Autor: Maximiliano De La Cruz Lima	A01798048
-- Curso: TE2003B

-- Librerías
library ieee;
use ieee.std_logic_1164.all;

-- Definición de la entidad
entity Cont24Bits is
	
	port ( CLK, RST : in std_logic;	-- Entradas
			 OVER : out std_logic );	-- Salidas
	
end entity;

-- Definición de la arquitectura
architecture RTL of Cont24Bits is

-- Definición de los componentes
	
		-- Definición del uso del componente MAS_UNO_24BITS:
		
		 component SumaUno24Bits is								-- componente MAS_UNO_24BITS
	
			port ( A : in std_logic_vector (15 downto 0);	-- Entradas
					 OVER : out std_logic;							-- Salidas
					 Z : out std_logic_vector(15 downto 0) );
	
		end component;
		
	-- Definición cables de interconexión:
	
	signal D, Q : std_logic_vector (15 downto 0);	-- Flip-Flop tipo D
	signal A, Z : std_logic_vector (15 downto 0);
	signal proceso, OV, DFF, QFF : std_logic;
	
	
	-- Descripción del circuito:
	
	begin
			
			I0 : SumaUno24Bits port map (Q, OV, D);			-- HA
			
			proceso <= RST;
			
			FFD1 : process (CLK, proceso)
			
				begin
				
					if (proceso = '0') then
						Q <= x"0000";
					elsif (CLK'EVENT and CLK = '1') then	-- ciclo de subida
						Q <= D;
					end if;
					
			end process FFD1;
			
			
			FFD2 : process (CLK, proceso, QFF)
			
				begin
				
					if (CLK'EVENT and CLK = '1' and proceso = '1') then
						QFF <= OV;
					end if;
	
			end process FFD2;
	
			OVER <= QFF;
			
end architecture;