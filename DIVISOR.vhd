----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:25:16 11/09/2010 
-- Design Name: 
-- Module Name:    DIVISOR - Behavioral 
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

entity DIVISOR is
    Port ( CLK_IN : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           CLK_OUT : out  STD_LOGIC);
end DIVISOR;

architecture Behavioral of DIVISOR is

begin
 PROCESS(CLK_IN, RESET)

       VARIABLE temp : STD_LOGIC_vector (25 downto 0);
  begin
		if RESET='1'
		 
		 then 
		 temp:="00000000000000000000000000";
		 elsif (CLK_IN'event and CLK_IN='1') then
		 if temp="10111110101111000010000000" then
		  
		  temp:="00000000000000000000000000";

       else
          temp:=temp + 00000000000000000000000001;
        end if;
end if;
CLK_OUT <= temp(25);
end process;
end Behavioral;

