library verilog;
use verilog.vl_types.all;
entity SelectDestination is
    port(
        regDest         : in     vl_logic;
        rt              : in     vl_logic_vector(3 downto 0);
        rd              : in     vl_logic_vector(3 downto 0);
        myDestination   : out    vl_logic_vector(3 downto 0)
    );
end SelectDestination;
