library verilog;
use verilog.vl_types.all;
entity instructionMemory is
    port(
        ProgramCounterAddress: in     vl_logic_vector(9 downto 0);
        clk             : in     vl_logic;
        theInstruction  : out    vl_logic_vector(31 downto 0)
    );
end instructionMemory;
