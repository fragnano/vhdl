--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:16:49 11/08/2010
-- Design Name:   
-- Module Name:   C:/Documents and Settings/ferprueba/SIMULACION.vhd
-- Project Name:  ferprueba
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: contador
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY SIMULACION IS
END SIMULACION;
 
ARCHITECTURE behavior OF SIMULACION IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT contador
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
			LOAD : IN  std_logic;
			A :IN  std_logic;
			B :IN  std_logic;
			C :IN  std_logic;
			D :IN  std_logic;
         EN : IN  std_logic;
			UP : IN STD_LOGIC;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal EN : std_logic := '1';
	signal UP : std_logic := '1';
	signal LOAD : std_logic := '0';
signal D : std_logic := '1';
signal C : std_logic := '1';
signal B : std_logic := '0';
signal A : std_logic := '1';	

 	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: contador PORT MAP (
          CLK => CLK,
          RESET => RESET,
          UP=>UP,
			 EN => EN,
			 LOAD => LOAD,
			 A => A,
			 B => B,
			 C => C,
			 D => D,
			 Q => Q
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		RESET <='1';
      wait for 100 ns;	
      
		RESET<='0';
      wait for CLK_period*2;
		
		LOAD<='1';
		wait for 50 ns;
		LOAD<='0';
      wait for CLK_period*8;
		A<='1';
		wait for 50 ns;
		A<='0';
      wait for CLK_period*8;
		
		B<='1';
		wait for 50 ns;
		B<='0';
      wait for CLK_period*8;
		
		C<='1';
		wait for 50 ns;
		C<='0';
      wait for CLK_period*8;
	   D<='1';
		wait for 50 ns;
		D<='0';
      wait for CLK_period*8;
		
		
		UP<='1';
      wait for 20 ns;
		UP<='0';
		wait for CLK_period*2;
		
		EN<='1';
		wait for 250 ns;
		EN<='0';
      wait for CLK_period*8;
		

		
		-- insert stimulus here 

      wait;
   end process;

END;

