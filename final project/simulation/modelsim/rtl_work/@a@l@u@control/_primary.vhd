library verilog;
use verilog.vl_types.all;
entity ALUControl is
    port(
        ALUop           : in     vl_logic_vector(2 downto 0);
        func            : in     vl_logic_vector(5 downto 0);
        ALUctrl         : out    vl_logic_vector(2 downto 0)
    );
end ALUControl;
