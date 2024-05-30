-- Registros para el Datapath
-- Eduardo Chávez Martín			A01799595
-- Maximiliano De La Cruz Lima	A01798048
-- TE2003B

-- Librerías
library ieee;
use ieee.std_logic_1164.all;

-- Descripción de la entidad
entity Registros is
	port (
			CLK, RST	: in	std_logic;
			BUS_2		: in	std_logic_vector(7 downto 0);
			LoadA		: in	std_logic;
			LoadB		: in	std_logic;
			LoadCCR	: in	std_logic;
			LoadIR	: in	std_logic;
			LoadMAR	: in	std_logic;
			InCCR		: in	std_logic_vector(3 downto 0);
			RegA		: out	std_logic_vector(7 downto 0);
			RegB		: out std_logic_vector(7 downto 0);
			RegCCR	: out std_logic_vector(3 downto 0);
			RegIR		: out std_logic_vector(7 downto 0);
			RegMAR	: out std_logic_vector(7 downto 0)
			);
end entity;

-- Descripción de la arquitectura
architecture RTL of Registros is
	
	begin
		
		-- Registo A
		RegisA: process(BUS_2, LoadA, CLK, RST)
		begin
			if (RST = '0') then
				RegA	<=	x"00";
			elsif (CLK'event and CLK = '1') then
				if (LoadA = '1') then
					RegA	<=	BUS_2;
				end if;
			end if;
		end process;
		
		-- Registro B
		RegisB: process(BUS_2, LoadB, CLK, RST)
		begin
			if (RST = '0') then
				RegB	<=	x"00";
			elsif (CLK'event and CLK = '1') then
				if (LoadB = '1') then
					RegB	<=	BUS_2;
				end if;
			end if;
		end process;
		
		-- Condition Code Register (CCR)
		CCR: process(InCCR, LoadCCR, CLK, RST)
		begin
			if (RST = '0') then
				RegCCR	<=	x"0";
			elsif (CLK'event and CLK = '1') then
				if (LoadCCR = '1') then
					RegCCR	<=	InCCR;
				end if;
			end if;
		end process;
		
		-- Instruction Register (IR)
		IR: process(BUS_2, LoadIR, CLK, RST)
			begin
			if (RST = '0') then
				RegIR	<=	x"00";
			elsif (CLK'event and CLK = '1') then
				if (LoadIR = '1') then
					RegIR	<=	BUS_2;
				end if;
			end if;
		end process;
		
		-- Memory Adress Register (MAR)
		MAR: process(BUS_2, LoadMAR, CLK, RST)
		begin
			if (RST = '0') then
				RegMAR	<=	x"00";
			elsif (CLK'event and CLK = '1') then
				if (LoadMAR = '1') then
					RegMAR	<=	BUS_2;
				end if;
			end if;
		end process;
	
end architecture;
