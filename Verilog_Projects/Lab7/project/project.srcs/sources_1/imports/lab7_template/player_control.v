module player_control (
	input clk, // clkDiv22
	input reset, 
	input _play, 
	input [1:0] state,
	output reg [11:0] ibeat_out
);

	// per song: 8 measures
	// per measure: 4 beats
	// per beat: 16 ibeat
	// total: 8*4*16 = 2^9 = 512 ibeats
	parameter LEN = 4096; // we can change this to 512 in module instantiation

	parameter [1:0] DEMONSTRATE = 2'b00;
	parameter [1:0] PIANO = 2'b01;
	parameter [1:0] HELPER = 2'b10;

  reg [11:0] ibeat, next_ibeat; // for DEMONSTRATE
	reg [11:0] ibeat2, next_ibeat2; // for HELPER

	always @(posedge clk, posedge reset) begin
		if (reset) begin
			ibeat <= 0;
			ibeat2 <= 0;
		end else begin
			ibeat <= next_ibeat;
			ibeat2 <= next_ibeat2;
		end
	end

	always @* begin
		next_ibeat = ibeat;
		next_ibeat2 = ibeat2;

		case (state)
			DEMONSTRATE: begin
				if (_play == 'b1) next_ibeat = (ibeat + 1 < LEN) ? ibeat + 1 : 0; // repeat
				else next_ibeat = ibeat;
				next_ibeat2 = 0; // prepare for helper state
			end
			PIANO: begin
				next_ibeat2 = 0; // prepare for helper state
			end
			HELPER: begin
				// stops after last note (i.e., stops at LEN, so that we can detect song end)
				next_ibeat2 = (ibeat2 < LEN) ? ibeat2 + 1 : LEN;
			end
		endcase
	end

	always @(*) begin
		ibeat_out = 0;

		case (state)
			DEMONSTRATE: ibeat_out = ibeat;
			HELPER: ibeat_out = ibeat2;
		endcase
	end

endmodule
