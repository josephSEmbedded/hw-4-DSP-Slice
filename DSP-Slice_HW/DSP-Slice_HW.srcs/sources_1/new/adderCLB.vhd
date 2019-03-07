----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 12:03:32 PM
-- Design Name: 
-- Module Name: adderCLB - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity adderCLB is
    Port(signal a : in std_logic_vector(15 downto 0);
         signal clk: in std_logic;
         signal reset : in std_logic;
         signal ce : in std_logic;
         signal b : in std_logic_vector(15 downto 0);
         signal p : out std_logic_vector(15 downto 0));
end adderCLB;

architecture Behavioral of adderCLB is

attribute use_dsp48 : string;
attribute use_dsp48 of Behavioral : architecture is "yes";

signal a1 : std_logic_vector(15 downto 0);
signal b1 : std_logic_vector(15 downto 0);
signal p1 : std_logic_vector(15 downto 0);
begin

p1 <= std_logic_vector(unsigned(a1)+unsigned(b1));

process(clk)
begin
if (rising_edge(clk)) then
    if (reset = '1') then
        p  <= (others => '0');
        a1 <= (others => '0');
        b1 <= (others => '0');
    elsif ce ='1' then
        a1 <= a;
        b1 <= b;
        p <= p1;
   end if;
end if;
end process;
   
        
       




end Behavioral;
