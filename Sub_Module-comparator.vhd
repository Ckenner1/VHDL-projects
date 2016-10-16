----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2016 04:34:55 PM
-- Design Name: 
-- Module Name: Sub_Module - Behavioral
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

entity Sub_Module is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Gin : in STD_LOGIC;
           Lin : in STD_LOGIC;
           EQin : in STD_LOGIC;
           GOUT : out STD_LOGIC;
           LOUT : out STD_LOGIC;
           EQOUT : out STD_LOGIC);
end Sub_Module;

architecture Behavioral of Sub_Module is

signal Gtemp,Ltemp,EQtemp : STD_LOGIC;

begin

    EQtemp <= NOT((A AND (NOT B)) OR (B AND (NOT A)));
    Ltemp <= (NOT A AND B);
    Gtemp <= (NOT B AND A);
    GOUT  <= Gtemp or (EQtemp and Gin); 
    LOUT  <= Ltemp or (EQtemp and Lin); 
    EQOUT <= EQin AND EQTEMP;

end Behavioral;
