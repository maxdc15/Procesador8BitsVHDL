-- Memoría RAM del procesador de 8 bits
-- Maximiliano De La Cruz Lima	A01798048
-- TE2003B

-- Librerías
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Descripción de la entidad
entity mem_programa is
	port (CLK		:	in std_logic;							-- Entradas
			address	:	in std_logic_vector(6 downto 0);	-- Salidas
			data_out	: out std_logic_vector(7 downto 0));
end entity;

-- Descripción de la arquitectura
architecture arc of mem_programa is
	
	-- Instrucciones Set Architecture
	-- Transferencia de datos
	constant LDA_INM	:	std_logic_vector(7 downto 0) := x"86";	-- Carga inmediata en A
	constant LDB_INM	:	std_logic_vector(7 downto 0) := x"87";	-- Carga inmediata en B
	constant LDA_DIR	:	std_logic_vector(7 downto 0) := x"88";	-- Carga dirección en A
	constant LDB_DIR	:	std_logic_vector(7 downto 0) := x"89";	-- Carga dirección en B
	constant STORE_A	:	std_logic_vector(7 downto 0) := x"96";	-- Guarda A en dirección
	constant STORE_B	:	std_logic_vector(7 downto 0) := x"97";	-- Guarda B en dirección
	
	-- Operación aritmética
	constant ADD_AB	:	std_logic_vector(7 downto 0) := x"40";	-- Suma A + B
	constant SUB_AB	:	std_logic_vector(7 downto 0) := x"41";	-- Resta A - B
	constant AND_AB	:	std_logic_vector(7 downto 0) := x"42";	-- A AND B
	constant OR_AB		:	std_logic_vector(7 downto 0) := x"43";	-- A OR B
	constant XOR_AB	:	std_logic_vector(7 downto 0) := x"44";	-- A XOR B
	constant INC_A		:	std_logic_vector(7 downto 0) := x"45";	-- INC A	=>	A = A + 1
	constant INC_B		:	std_logic_vector(7 downto 0) := x"46";	-- INC B	=>	B = B + 1
	constant DEC_A		:	std_logic_vector(7 downto 0) := x"47";	-- DEC A	=>	A = A - 1
	constant DEC_B		:	std_logic_vector(7 downto 0) := x"48";	-- DEC B	=>	B = B - 1
	constant NOT_A		:	std_logic_vector(7 downto 0) := x"50";	-- NEG A	=>	Comp1 A
	constant NOT_B		:	std_logic_vector(7 downto 0) := x"51";	-- NEG B	=>	Comp1 B
	
	-- Saltos
	constant JMP		:	std_logic_vector(7 downto 0) := x"20";	-- Salto incondicional a dirección
	constant JN			:	std_logic_vector(7 downto 0) := x"21";	-- Salto a dirección si N = 1
	constant JNN		:	std_logic_vector(7 downto 0) := x"22";	-- Salto a dirección si N = 0
	constant JZ			:	std_logic_vector(7 downto 0) := x"23";	-- Salto a dirección si Z = 1 / JE
	constant JNZ		:	std_logic_vector(7 downto 0) := x"24";	-- Salto a dirección si Z = 0 / JNE
	constant JOV		:	std_logic_vector(7 downto 0) := x"25";	-- Salto a dirección si v = 1
	constant JNOV		:	std_logic_vector(7 downto 0) := x"26";	-- Salto a dirección si v = 0
	constant JC			:	std_logic_vector(7 downto 0) := x"27";	-- Salto a dirección si C = 1
	constant JNC		:	std_logic_vector(7 downto 0) := x"28";	-- Salto a dirección si C = 0
	
	type instmem is array (0 to 127) of std_logic_vector(7 downto 0);
	
	signal ROM:	instmem := (
									-- Inicialización de las variables
									
									0	=> LDA_INM,	-- Registro para a; a = 0
									1	=> X"00",
									2 	=> STORE_A,
									3	=> X"81",
									4	=> LDB_INM,	-- Registro para b; b = 1
									5	=> X"01",
									6	=> STORE_B,
									7	=> X"82",
									8	=> LDA_INM,	-- Registro para c; c = 0
									9	=> X"00",
									10 => STORE_A,
									11	=> X"83",
								
									12	=> LDB_INM,	-- Contador de valores n = 12
									13	=> x"0B",
									14	=> STORE_B,
									15	=> X"80",
									16	=> LDB_DIR,
									17	=> X"83",
									18	=> STORE_B,
									19	=> X"F2",
									
									
									-- Secuencia de Fibonacci
									
									20	=>	LDA_DIR,	-- Cargar a
									21	=> X"81",
									22	=> STORE_A,
									23	=> X"FE",
									24	=> LDB_DIR,	-- Cargar b
									25	=> X"82",
									26	=> STORE_B,
									27	=> X"FD",
									28	=> ADD_AB,
									29	=> STORE_B,
									30	=> X"F1",
									31	=> STORE_A,	-- c = a + b
									32	=> X"F0",
									33	=> STORE_A,	-- Mostrar el resultado en 7 segmentos
									34	=> X"83",
									35	=> LDA_DIR,	-- a = b
									36	=> X"82",
									37	=> STORE_A,
									38	=> X"81",
									39	=> LDB_DIR,	-- b = c
									40	=> X"83",
									41	=> STORE_B,
									42	=> X"82",
									43	=> LDB_DIR,
									44	=> X"80",
									45	=> DEC_B,	-- Reducir contador
									46	=> JNZ,
									47	=>	X"0E",
									48	=> JMP,
									49	=> X"00",		

									others	=> x"00");
									
	begin
		process (CLK)
			begin
				if (CLK'event and CLK = '1') then
					data_out	<=	ROM(conv_integer(unsigned(address)));
				end if;
		end process;
	
end architecture;