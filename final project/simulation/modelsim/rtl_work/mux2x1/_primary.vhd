library verilog;
use verilog.vl_types.all;
entity mux2x1 is
    port(
        D0              : in     vl_logic_vector(15 downto 0);
        D1              : in     vl_logic_vector(15 downto 0);
        S               : in     vl_logic;
        F               : out    vl_logic_vector(15 downto 0)
    );
end mux2x1;
