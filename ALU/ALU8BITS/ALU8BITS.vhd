-- Unidad Aritmético Lógica (ALU) de 8 bits
-- Eduardo Chávez Martín			A01799595
-- Maximiliano De La Cruz Lima	A01798048
-- TE2003B

-- Librerías
library ieee;
use ieee.std_logic_1164.all;

-- Descripción de la entidad
entity ALU8BITS is
	port (
			A, B		: in  std_logic_vector(7 downto 0);
			Sel		: in  std_logic_vector(7 downto 0);
			Flags		: out std_logic_vector(3 downto 0);  -- Negativo, Zero, Carry, Overflow
			Res_ALU	: out std_logic_vector(7 downto 0)
			);
end entity;

-- Descripción de la arquitectura
architecture RTL of ALU8BITS is
	
	-- Componentes utilizados
		-- Componente SUMA8
		component SUMA8 is
			port (
			A, B        : in  std_logic_vector(7 downto 0);	-- Entradas
			Cin         : in  std_logic;
			S           : out std_logic_vector(7 downto 0);	-- Salidas
			Cout        : out std_logic;
			OverFlow    : out std_logic
			);
		end component;
		
		-- Componente RESTA8
		component RESTA8 is
			port (
					A, B		: in  std_logic_vector(7 downto 0);	-- Entradas
					Bin			: in  std_logic;
					Diff		: out std_logic_vector(7 downto 0);	-- Salidas
					Bout		: out std_logic;
					OverFlow	: out std_logic
					);
		end component;
		
	-- Cables de interconexión
	signal AaddB, AsubB, IncA, IncB, DecA, DecB: std_logic_vector (7 downto 0);	-- Operaciones aritméticas
	signal AandB, AorB, AxorB, NotA, NotB : std_logic_vector (7 downto 0);			-- Operaciones lógicas
	
	signal Carry, Borrow : std_logic;
	signal CoIncA, CoIncB, BoDecA, BoDecB : std_logic;
	signal OverAaddB, OverAsubB, OverIncA, OverIncB, OverDecA, OverDecB : std_logic;
	signal Result : std_logic_vector (7 downto 0);
	
	begin
	
		I0	:	SUMA8		port map ( A, B, 		'0', AaddB, Carry,  OverAaddB );	-- A + B
		I1	:	RESTA8	port map ( A, B, 		'0', AsubB, Borrow, OverAsubB );	-- A - B
		I2	:	SUMA8		port map ( A, x"01", '0', IncA,	CoIncA, OverIncA );	-- A = A + 1
		I3	:	SUMA8		port map ( B, x"01",	'0', IncB,	CoIncB, OverIncB );	-- B = B + 1
		I4	:	RESTA8	port map ( A, x"01", '0', DecA,	BoDecA, OverDecA );	-- A = A - 1
		I5	:	RESTA8	port map ( B, x"01", '0', DecB,	BoDecB, OverDecB );	-- B = B - 1
		
		AandB	<=	A and B;
		AorB	<=	A or B;
		AxorB	<= A xor B;
		NotA	<= not(A);
		NotB	<=	not(B);
		
		with Sel select
		
			Result	<=		AaddB		when x"40",	-- A + B
								AsubB 	when x"41",	-- A - B
								AandB		when x"42",	-- A and B
								AorB		when x"43",	-- A or B
								AxorB		when x"44",	-- A xor B
								IncA		when x"45",	-- A = A + 1
								IncB		when x"46",	-- B = B + 1
								DecA		when x"47",	-- A = A - 1
								DecB		when x"48",	-- B = B - 1
								NotA		when x"50",	-- Not A
								NotB		when x"51",	-- Not B
								x"00"		when others;

---------------------------------------------------------------------------------------------------------------------------------------------------
		-- Banderas: Carry, OverFlow, Zero, Negativo
		
		CarryFlag: process(Sel)
		begin
			
			if ( (Sel = x"40") or (Sel = x"45") or (Sel = x"46") ) then
				if 	( Sel = x"40" ) then
					Flags(0)	<=	Carry;	-- A + B
				elsif ( Sel = x"45" ) then
					Flags(0)	<=	CoIncA;	-- A = A + 1
				elsif	( Sel = x"46" ) then
					Flags(0)	<= CoIncB;	-- B = B + 1
				end if;
			else
				Flags(0)	<=	'0';
			end if;
		end process;
---------------------------------------------------------------------------------------------------------------------------------------------------
		OverFlow: process(Sel)
		begin
			
			if ( (Sel = x"40") or (Sel = x"41") or (Sel = x"45") or (Sel = x"45") or (Sel = x"47") or (Sel = x"48") ) then
				if 	( Sel = x"40" ) then
					Flags(1)	<=	OverAaddB;	-- A + B
				elsif ( Sel = x"41" ) then
					Flags(1)	<=	OverAsubB;	-- A - B
				elsif	( Sel = x"45" ) then
					Flags(1)	<= OverIncA;	-- A = A + 1
				elsif 	( Sel = x"46" ) then
					Flags(1)	<=	OverIncB;	-- B = B + 1
				elsif ( Sel = x"47" ) then
					Flags(1)	<=	OverDecA;	-- A = A - 1
				elsif	( Sel = x"48" ) then
					Flags(1)	<= OverDecB;	-- B = B - 1
				end if;
			else
				Flags(1)	<=	'0';
			end if;
		end process;
---------------------------------------------------------------------------------------------------------------------------------------------------
	Flags(2)	<=	not((((Result(0))or(Result(1)))or((Result(2))or(Result(3)))) or (((Result(4))or(Result(5)))or((Result(6))or(Result(7)))));
---------------------------------------------------------------------------------------------------------------------------------------------------
		Negativo: process(Sel)
		begin
			
			if ( (Sel = x"41") or (Sel = x"44") or (Sel = x"45")) then
				if 	( Sel = x"41" ) then
					Flags(3)	<=	Borrow;		-- A - B
				elsif	( Sel = x"47" ) then
					Flags(3)	<=	BoDecA;		-- A = A - 1
				elsif	( Sel = x"48" ) then
					Flags(3)	<=	BoDecB;		-- B = B - 1
				end if;
			else
				Flags(3)	<=	'0';
			end if;
		end process;
		
		Res_ALU	<=	Result;
	
end architecture;
