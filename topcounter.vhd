----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:14:42 11/16/2010 
-- Design Name: 
-- Module Name:    topcounter - Behavioral 
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

entity topcounter is
Port ( CLK_IN : in  STD_LOGIC;
	    RESET : in STD_LOGIC;
       --EN : in  STD_LOGIC;
		 UP : in  STD_LOGIC;
	    --LOAD : in  STD_LOGIC;
	    --A : in STD_LOGIC;
		-- B : in STD_LOGIC;
  	    --C : in STD_LOGIC;
		 --D : in STD_LOGIC;
		 Q : out  STD_LOGIC_VECTOR(3 downto 0));
end topcounter;

architecture estructura of topcounter is
signal tck: STD_LOGIC;


COMPONENT DIVISOR 
Port ( CLK_IN : in  STD_LOGIC;
	        RESET : in STD_LOGIC;
           CLK_OUT  : out  STD_LOGIC);
end component;

COMPONENT contador 
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
			  
			  end component;

begin


inst_divisor: DIVISOR PORT MAP(
				CLK_IN => CLK_IN ,
				RESET =>RESET,
				CLK_OUT => tck);
inst_contador: contador PORT MAP(
				CLK => tck ,
				RESET =>RESET,
			
				UP=> UP,
				Q=> Q
				--LOAD => LOAD ,
				--D => D,
				--C => C,
				--B => B,
				--A => A,
				--EN => EN 
				);

end estructura;

