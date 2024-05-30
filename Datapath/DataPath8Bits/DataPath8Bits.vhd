-- Data Path para el procesador de 8 bits
-- Eduardo Chávez Martín			A01799595
-- Maximiliano De La Cruz Lima	A01798048
-- TE2003B

-- Librerías
library ieee;
use ieee.std_logic_1164.all;

-- Descripción de la entidad
entity DataPath8Bits is
	port (
			CLK,RST	: in std_logic;
			IR_Load, MAR_Load, PC_Load,PC_Inc, A_Load, B_Load, CCR_Load	: in std_logic;
			Bus2_Sel,Bus1_Sel: in std_logic_vector(1 downto 0);
			ALU_Sel,From_Memory: in std_logic_vector(7 downto 0);
			CCR_Result, Flags: out std_logic_vector(3 downto 0);
			IR_Out, Address, To_Memory: out std_logic_vector(7 downto 0);
			BUS1_1, BUS2_2, PC_C, A_A, B_B : out std_logic_vector(7 downto 0)
			);
end entity;

-- Descripción de la arquitectura
architecture RTL of DataPath8Bits is
	
	-- Componentes utilizados
		-- ALU
		component ALU8BITS is
			port (
					A, B		: in  std_logic_vector(7 downto 0);
					Sel		: in  std_logic_vector(7 downto 0);
					Flags		: out std_logic_vector(3 downto 0);  -- Negativo, Zero, Carry, Overflow
					Res_ALU	: out std_logic_vector(7 downto 0)
					);
		end component;
		
		-- Registros
		component Registros is
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
		end component;
		
		-- Program Counter
		component PC is
			port (
					CLK     : in std_logic;
					RST     : in std_logic;
					PC_inc  : in std_logic;
					PC_load : in std_logic;
					B2      : in std_logic_vector(7 downto 0);
					PC_out  : out std_logic_vector(7 downto 0)
					);
		end component;
	
	-- Cables de interconexión
	signal BUS1,BUS2,MUX1_1,MUX1_2,MUX1_3,MUX2_1,MUX2_2,MUX2_3 : std_logic_vector(7 downto 0);
	signal CCR_In: std_logic_vector(3 downto 0);
	
	-- Descripción del circuito
	begin
		
		C1 :	Registros	port map	( CLK, RST, BUS2, A_Load, B_Load, CCR_Load, IR_Load, MAR_Load, CCR_In, MUX1_2, MUX1_3, CCR_reSult, IR_Out, Address );
		C2 :	ALU8BITS		port map	( MUX1_3, BUS1, ALU_Sel, CCR_In, MUX2_1 );
		C3 :	PC				port map	( CLK, RST, PC_Inc, PC_Load, BUS2, MUX1_1 );
		
		
		-- Selectores de bus
		with Bus1_Sel select
			BUS1	<=	MUX1_1 	when "00",
						MUX1_2	when "01",
						MUX1_3	when "10",
						null		when others;

		with Bus2_Sel select
			BUS2 	<= MUX2_1 when "00",
						BUS1 when "01",
						From_Memory when "10",
						null		when others;

		-- Asignaciones directas
		To_Memory <= BUS1;
		A_A <= MUX1_2;
		B_B <= MUX1_3;
		BUS1_1 <= BUS1;
		BUS2_2 <= BUS2;
		PC_C <= MUX1_1;
		Flags <= CCR_In;
		
end architecture;
