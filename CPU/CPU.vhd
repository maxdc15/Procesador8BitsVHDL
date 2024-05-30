-- Unidad Central de Procesamiento (CPU) de 8 bits
-- Eduardo Chávez Martín			A01799595
-- Maximiliano De La Cruz Lima	A01798048
-- TE2003B

-- Librerías
library ieee;
use ieee.std_logic_1164.all;

-- Descripción de la entidad
entity CPU is
	port (
			CLK, RST		: in	std_logic;
			From_Memory	: in	std_logic_vector(7 downto 0);
			WR				: out	std_logic;
			Address		: out std_logic_vector(7 downto 0);
			To_Memory	: out std_logic_vector(7 downto 0)
			);
end entity;

-- Descripción de la arquitectura
architecture RTL of CPU is
	
	-- Componentes utilizados
		-- Maquina de Estados: Unidad de Control
		component ME_Unidad_Control is
			port (
					Start,CLK,RST      			 		  		: in std_logic;
					IR                                   	: in std_logic_vector(7 downto 0);
					CCR_Result                           	: in std_logic_vector(3 downto 0);
					IR_Load,MAR_Load,PC_Load,PC_Inc,A_Load	: out std_logic;
					B_Load, CCR_Load,wr                   	: out std_logic;
					Bus2_Sel, Bus1_Sel                    	: out std_logic_vector(1 downto 0);
					ALU_Select                            	: out std_logic_vector(7 downto 0)
					);
		end component;
		
		-- Datapath
		component Datapath8Bits is
			port (
					CLK,RST	: in std_logic;
					IR_Load, MAR_Load, PC_Load,PC_Inc, A_Load, B_Load, CCR_Load	: in std_logic;
					Bus2_Sel,Bus1_Sel: in std_logic_vector(1 downto 0);
					ALU_Sel,From_Memory: in std_logic_vector(7 downto 0);
					CCR_Result, Flags: out std_logic_vector(3 downto 0);
					IR_Out, Address, To_Memory: out std_logic_vector(7 downto 0);
					BUS1_1, BUS2_2, PC_C, A_A, B_B : out std_logic_vector(7 downto 0)
					);
		end component;
		
	-- Señales internas
	signal IR, ALU_Sel : std_logic_vector(7 downto 0);
	signal CCR_Result : std_logic_vector(3 downto 0);
	signal Bus2_Sel, Bus1_Sel : std_logic_vector(1 downto 0);
	signal IR_Load,MAR_Load,PC_Load,PC_Inc,A_Load,B_Load,CCR_Load : std_logic;
	signal BUS1, BUS2, PC, A, B : std_logic_vector(7 downto 0);
	signal Flags : std_logic_vector(3 downto 0);
	
	-- Descripción del CPU
	begin
	
		C1: ME_Unidad_Control port map('1',CLK,RST,IR,CCR_Result,IR_Load,MAR_Load,PC_Load,PC_Inc,A_Load,B_Load,CCR_Load, WR,Bus2_Sel,Bus1_Sel,ALU_Sel);
		C2: DataPath8Bits port map(CLK,RST,IR_Load,MAR_Load,PC_Load,PC_Inc,A_Load,B_Load,CCR_Load, Bus2_Sel,Bus1_Sel,ALU_Sel,From_Memory,CCR_Result,Flags,IR,Address,To_Memory,BUS1,BUS2,PC,A,B);
	
end architecture;
