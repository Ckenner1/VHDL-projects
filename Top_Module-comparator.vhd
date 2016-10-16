----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2016 04:30:34 PM
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
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           EQTOUT : out STD_LOGIC;
           GTOUT : out STD_LOGIC;
           LTOUT : out STD_LOGIC);
end Top_Module;

architecture Behavioral of Top_Module is
    component Sub_Module
        port(Gin, Lin, EQin,A,B: in STD_LOGIC;
             GOUT,LOUT,EQOUT : out STD_LOGIC);
    end component;

    signal GTEMP, LTEMP, EQTEMP :STD_LOGIC_VECTOR(7 downto 0);
begin
    
    part1 : Sub_Module port map (A=>A(0), B => B(0), Gin => '0',Lin => '0', EQin => '1', EQOUT =>EQTEMP(0), LOUT =>LTEMP(0), GOUT => GTEMP(0));
    part2 : Sub_Module port map (A=>A(1), B => B(1), Gin => GTEMP(0),Lin => LTEMP(0), EQin => EQTEMP(0), EQOUT =>EQTEMP(1), LOUT =>LTEMP(1), GOUT => GTEMP(1));
    part3 : Sub_Module port map (A=>A(2), B => B(2), Gin => GTEMP(1),Lin => LTEMP(1), EQin => EQTEMP(1), EQOUT =>EQTEMP(2), LOUT =>LTEMP(2), GOUT => GTEMP(2));
    part4 : Sub_Module port map (A=>A(3), B => B(3), Gin => GTEMP(2),Lin => LTEMP(2), EQin => EQTEMP(2), EQOUT =>EQTEMP(3), LOUT =>LTEMP(3), GOUT => GTEMP(3));
    part5 : Sub_Module port map (A=>A(4), B => B(4), Gin => GTEMP(3),Lin => LTEMP(3), EQin => EQTEMP(3), EQOUT =>EQTEMP(4), LOUT =>LTEMP(4), GOUT => GTEMP(4));
    part6 : Sub_Module port map (A=>A(5), B => B(5), Gin => GTEMP(4),Lin => LTEMP(4), EQin => EQTEMP(4), EQOUT =>EQTEMP(5), LOUT =>LTEMP(5), GOUT => GTEMP(5));
    part7 : Sub_Module port map (A=>A(6), B => B(6), Gin => GTEMP(5),Lin => LTEMP(5), EQin => EQTEMP(5), EQOUT =>EQTEMP(6), LOUT =>LTEMP(6), GOUT => GTEMP(6));
    part8 : Sub_Module port map (A=>A(7), B => B(7), Gin => GTEMP(6),Lin => LTEMP(6), EQin => EQTEMP(6), EQOUT =>EQTEMP(7), LOUT =>LTEMP(7), GOUT => GTEMP(7));
    
    GTOUT <= GTEMP(7);
    LTOUT <= LTEMP(7);
    EQTOUT <= EQTEMP(7);
    
    
end Behavioral;
