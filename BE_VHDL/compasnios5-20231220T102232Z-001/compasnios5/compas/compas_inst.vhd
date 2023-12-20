	component compas is
		port (
			clk_clk                                : in  std_logic                    := 'X';             -- clk
			input_angle_external_connection_export : in  std_logic_vector(8 downto 0) := (others => 'X'); -- export
			leds_external_connection_export        : out std_logic_vector(8 downto 0);                    -- export
			reset_reset_n                          : in  std_logic                    := 'X'              -- reset_n
		);
	end component compas;

	u0 : component compas
		port map (
			clk_clk                                => CONNECTED_TO_clk_clk,                                --                             clk.clk
			input_angle_external_connection_export => CONNECTED_TO_input_angle_external_connection_export, -- input_angle_external_connection.export
			leds_external_connection_export        => CONNECTED_TO_leds_external_connection_export,        --        leds_external_connection.export
			reset_reset_n                          => CONNECTED_TO_reset_reset_n                           --                           reset.reset_n
		);

