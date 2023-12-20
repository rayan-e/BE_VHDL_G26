
module nios (
	clk_clk,
	reset_reset_n,
	data_in_external_connection_export,
	data_out_external_connection_export);	

	input		clk_clk;
	input		reset_reset_n;
	input	[11:0]	data_in_external_connection_export;
	output	[11:0]	data_out_external_connection_export;
endmodule
