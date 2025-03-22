library verilog;
use verilog.vl_types.all;
entity \_32bit_and\ is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        F               : out    vl_logic_vector(15 downto 0)
    );
end \_32bit_and\;
