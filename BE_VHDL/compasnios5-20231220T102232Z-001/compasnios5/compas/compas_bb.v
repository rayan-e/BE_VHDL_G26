
module compas (
	clk_clk,
	input_angle_external_connection_export,
	leds_external_connection_export,
	reset_reset_n);	

	input		clk_clk;
	input	[8:0]	input_angle_external_connection_export;
	output	[8:0]	leds_external_connection_export;
	input		reset_reset_n;
endmodule
