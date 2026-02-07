library ieee;
use ieee.std_logic_1164.all;

entity helloworld is
end entity;

architecture behavior of helloworld is
begin
    process
    begin
        report "Hello, World from VHDL!";
        wait;
    end process;
end architecture;
