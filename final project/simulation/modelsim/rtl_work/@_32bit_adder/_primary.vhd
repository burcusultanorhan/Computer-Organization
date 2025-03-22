library verilog;
use verilog.vl_types.all;
entity \_32bit_adder\ is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        Cin             : in     vl_logic;
        Sum             : out    vl_logic_vector(15 downto 0);
        Cout            : out    vl_logic
    );
end \_32bit_adder\;
