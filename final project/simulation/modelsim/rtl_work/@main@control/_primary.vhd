library verilog;
use verilog.vl_types.all;
entity MainControl is
    port(
        OpCode          : in     vl_logic_vector(5 downto 0);
        regDst          : out    vl_logic;
        ALUsrc          : out    vl_logic;
        MemtoReg        : out    vl_logic;
        RegWrite        : out    vl_logic;
        MemRead         : out    vl_logic;
        MemWrite        : out    vl_logic;
        Branch          : out    vl_logic;
        NotBranch       : out    vl_logic;
        Jump            : out    vl_logic;
        ALUOp           : out    vl_logic_vector(2 downto 0)
    );
end MainControl;
