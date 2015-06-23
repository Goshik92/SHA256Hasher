create_clock -name "hasherClock" -period 20.0 [ get_ports hasherClock ]
create_clock -name "s_axi_aclk" -period 10.0 [ get_ports s_axi_aclk ]