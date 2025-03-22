library verilog;
use verilog.vl_types.all;
entity \_32bit_slt\ is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        Result          : out    vl_logic_vector(15 downto 0)
    );
end \_32bit_slt\;
