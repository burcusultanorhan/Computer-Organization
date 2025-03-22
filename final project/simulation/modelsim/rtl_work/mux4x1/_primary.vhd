library verilog;
use verilog.vl_types.all;
entity mux4x1 is
    port(
        D0              : in     vl_logic_vector(15 downto 0);
        D1              : in     vl_logic_vector(15 downto 0);
        D2              : in     vl_logic_vector(15 downto 0);
        D3              : in     vl_logic_vector(15 downto 0);
        S               : in     vl_logic_vector(1 downto 0);
        F               : out    vl_logic_vector(15 downto 0)
    );
end mux4x1;
