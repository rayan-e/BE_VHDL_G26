	component nios is
		port (
			clk_clk                             : in  std_logic                     := 'X';             -- clk
			reset_reset_n                       : in  std_logic                     := 'X';             -- reset_n
			data_in_external_connection_export  : in  std_logic_vector(11 downto 0) := (others => 'X'); -- export
			data_out_external_connection_export : out std_logic_vector(11 downto 0)                     -- export
		);
	end component nios;

	u0 : component nios
		port map (
			clk_clk                             => CONNECTED_TO_clk_clk,                             --                          clk.clk
			reset_reset_n                       => CONNECTED_TO_reset_reset_n,                       --                        reset.reset_n
			data_in_external_connection_export  => CONNECTED_TO_data_in_external_connection_export,  --  data_in_external_connection.export
			data_out_external_connection_export => CONNECTED_TO_data_out_external_connection_export  -- data_out_external_connection.export
		);

