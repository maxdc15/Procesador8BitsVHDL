-- Algoritmo Double Dabble para mostrar un número de representación en binario a Binary Coded Decimal (BCD)
-- TE2003B


-- Librerías
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- Descripción de la entidad
entity DoubleDabble is
   port (
			BIN : in std_logic_vector(7 downto 0);				-- Entrada en binario
			s1, s2, s3 : out std_logic_vector(6 downto 0)	-- 3 Displays de 7 segmentos
			);
end entity;

-- Descripción de la arquitectura
architecture RTL of DoubleDabble is

		-- Señal de interconexión
		signal bcd_digits : std_logic_vector(11 downto 0); -- 4 bits para dígito
		
	begin

		DoubleD: process(BIN)
		
			variable shift_reg : std_logic_vector(19 downto 0);
		begin
				-- Initialize the shift register with the binary input
				shift_reg := (others => '0');
				shift_reg(7 downto 0) := BIN;

			  -- Perform Double Dabble algorithm
			for i in 0 to 7 loop
			
				-- Check each BCD digit and add 3 if greater than or equal to 5
				if unsigned(shift_reg(19 downto 16)) >= 5 then
					shift_reg(19 downto 16) := std_logic_vector(unsigned(shift_reg(19 downto 16)) + 3);
				end if;
				if unsigned(shift_reg(15 downto 12)) >= 5 then
					shift_reg(15 downto 12) := std_logic_vector(unsigned(shift_reg(15 downto 12)) + 3);
				end if;
				if unsigned(shift_reg(11 downto 8)) >= 5 then
					shift_reg(11 downto 8) := std_logic_vector(unsigned(shift_reg(11 downto 8)) + 3);
				end if;

			-- Shift left
			shift_reg := shift_reg(18 downto 0) & '0';
			
			end loop;

			-- Assign BCD digits to internal signal
			bcd_digits <= shift_reg(19 downto 8);
		end process;

		 -- Map BCD digits to 7-segment display codes
		 with bcd_digits(11 downto 8) select
			  s3 <= "1000000" when "0000", -- 0
					  "1111001" when "0001", -- 1
					  "0100100" when "0010", -- 2
					  "0110000" when "0011", -- 3
					  "0011001" when "0100", -- 4
					  "0010010" when "0101", -- 5
					  "0000010" when "0110", -- 6
					  "1111000" when "0111", -- 7
					  "0000000" when "1000", -- 8
					  "0010000" when "1001", -- 9
					  "1111111" when others;

		 with bcd_digits(7 downto 4) select
			  s2 <= "1000000" when "0000", -- 0
					  "1111001" when "0001", -- 1
					  "0100100" when "0010", -- 2
					  "0110000" when "0011", -- 3
					  "0011001" when "0100", -- 4
					  "0010010" when "0101", -- 5
					  "0000010" when "0110", -- 6
					  "1111000" when "0111", -- 7
					  "0000000" when "1000", -- 8
					  "0010000" when "1001", -- 9
					  "1111111" when others;

		 with bcd_digits(3 downto 0) select
			  s1 <= "1000000" when "0000", -- 0
					  "1111001" when "0001", -- 1
					  "0100100" when "0010", -- 2
					  "0110000" when "0011", -- 3
					  "0011001" when "0100", -- 4
					  "0010010" when "0101", -- 5
					  "0000010" when "0110", -- 6
					  "1111000" when "0111", -- 7
					  "0000000" when "1000", -- 8
					  "0010000" when "1001", -- 9
					  "1111111" when others;
				  
end architecture;
