library verilog;
use verilog.vl_types.all;
entity ALU32bit is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        Op              : in     vl_logic_vector(2 downto 0);
        Result          : out    vl_logic_vector(15 downto 0)
    );
end ALU32bit;
