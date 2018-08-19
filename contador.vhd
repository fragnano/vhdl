----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:30:19 10/26/2010 
-- Design Name: 
-- Module Name:    contador - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador is
    Port ( CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           --EN : in  STD_LOGIC;
			  UP : in STD_LOGIC;
			  --LOAD : in STD_LOGIC;
			  --A : in STD_LOGIC;
			  --B : in STD_LOGIC;
			  --C : in STD_LOGIC;
			  --D : in STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end contador;

architecture Behavioral of contador is

	
begin
	process (CLK, RESET,UP) 
	variable cuenta: STD_LOGIC_VECTOR (3 downto 0);
	begin
	if  RESET='1'  then
	cuenta :="0000";	
		elsif (CLK'event and CLK='1') then	
	     
		  --CASE LOAD IS
		--when '1' => 
		     --cuenta(3):= D;
			  --cuenta(2):= C;
			  --cuenta(1):= B;
			  --cuenta(0):= A;
		--when '0'	=>  
  			
			--case EN is 
			--ENABLE CON CUENTA REGRESIVA O ASCENDENTE
				--when '1'  =>	
				
						case UP is 
							when '0' =>
							cuenta := cuenta - 0001;
							when '1' =>
							cuenta := cuenta + 0001;
							when others=> null;
							end case;
					--when '0'	=>	
					--cuenta:=cuenta;
	
	--when others => null;
	--end case;
	--when others => null;
	--end case;
	end if;	
	Q <= cuenta;
    end process;
end Behavioral;
