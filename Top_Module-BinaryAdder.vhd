----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/15/2016 09:23:00 AM
-- Design Name: 
-- Module Name: Top_Module - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top_Module is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Sum : out STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC);
end Top_Module;

architecture Behavioral of Top_Module is

    component Sub_Module
        port(A,B,Cin: in STD_LOGIC;
             Sum, Cout: out STD_LOGIC);
    end component;
    
    signal Ctemp : STD_LOGIC_VECTOR(3 downto 0);
begin

    part1: Sub_Module port map(A => A(0), B => B(0),Cin => '0', Sum => Sum(0), Cout => Ctemp(0));
    part2: Sub_Module port map(A => A(1), B=> B(1), Cin => Ctemp(0), Sum => Sum(1), Cout => Ctemp(1));
    part3: Sub_Module port map(A => A(2), B=> B(2), Cin => Ctemp(1), Sum => Sum(2), Cout => Ctemp(2));
    Part4: Sub_Module port map(A => A(3), B=> B(3), Cin => Ctemp(2), Sum => Sum(3), Cout => Ctemp(3));
    
    Cout<= Ctemp(3);
    

end Behavioral;
