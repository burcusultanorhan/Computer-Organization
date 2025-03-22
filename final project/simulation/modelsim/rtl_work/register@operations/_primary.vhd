library verilog;
use verilog.vl_types.all;
entity registerOperations is
    port(
        data            : in     vl_logic_vector(15 downto 0);
        rs              : in     vl_logic_vector(3 downto 0);
        rt              : in     vl_logic_vector(3 downto 0);
        rd              : in     vl_logic_vector(3 downto 0);
        RegWrite        : in     vl_logic;
        clock           : in     vl_logic;
        output1         : out    vl_logic_vector(15 downto 0);
        output2         : out    vl_logic_vector(15 downto 0)
    );
end registerOperations;
