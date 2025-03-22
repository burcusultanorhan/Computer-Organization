library verilog;
use verilog.vl_types.all;
entity memoryOperations is
    port(
        memRead         : in     vl_logic;
        memWrite        : in     vl_logic;
        clk             : in     vl_logic;
        aluResult       : in     vl_logic_vector(15 downto 0);
        myData          : in     vl_logic_vector(15 downto 0);
        myOutput        : out    vl_logic_vector(15 downto 0)
    );
end memoryOperations;
