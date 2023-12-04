module key_freq_calculator(
    input [8:0] key,
    output reg [31:0] key_freq
);

    parameter [31:0] c3 = 32'd131; 
    parameter [31:0] d3 = 32'd147;   
    parameter [31:0] e3 = 32'd165;   
    parameter [31:0] f3 = 32'd174;   
    parameter [31:0] g3 = 32'd196;   
    parameter [31:0] a3 = 32'd220;
    parameter [31:0] b3 = 32'd247;
    parameter [31:0] SILENCE = 32'd50_000_000; // silence
    parameter [8:0] KEY_CODES [0:20] = {
				9'b0_0001_0101,	// 0 => Q (15)
				9'b0_0001_1101,	// 1 => W (1D)
				9'b0_0010_0100,	// 2 => E (24)
				9'b0_0010_1101,	// 3 => R (2D)
        9'b0_0010_1100, // 4 => T (2C)
        9'b0_0011_0101, // 5 => Y (35)
        9'b0_0011_1100, // 6 => U (3C)

				9'b0_0001_1100,	// 7 => A (1C)
				9'b0_0001_1011,	// 8 => S (1B)
        9'b0_0010_0011, // 9 => D (23)
        9'b0_0010_1011, // 10 => F (2B)
        9'b0_0011_0100, // 11 => G (34)
        9'b0_0011_0011, // 12 => H (33)
        9'b0_0011_1011, // 13 => J (3B)
	
        9'b0_0001_1010, // 14 => Z (1A)
        9'b0_0010_0010, // 15 => X (22)
        9'b0_0010_0001, // 16 => C (21)
        9'b0_0010_1010, // 17 => V (2A)
        9'b0_0011_0010, // 18 => B (32)
        9'b0_0011_0001, // 19 => N (31)
        9'b0_0011_1010 // 20 => M (3A)
		};

	always @ (*) begin
		case (key)
      // 5
			KEY_CODES[00] : key_freq = c3 << 2;
			KEY_CODES[01] : key_freq = d3 << 2;
			KEY_CODES[02] : key_freq = e3 << 2;
			KEY_CODES[03] : key_freq = f3 << 2;
			KEY_CODES[04] : key_freq = g3 << 2;
			KEY_CODES[05] : key_freq = a3 << 2;
			KEY_CODES[06] : key_freq = b3 << 2;

      // 4
			KEY_CODES[07] : key_freq = c3 << 1;
			KEY_CODES[08] : key_freq = d3 << 1;
			KEY_CODES[09] : key_freq = e3 << 1;
			KEY_CODES[10] : key_freq = f3 << 1;
			KEY_CODES[11] : key_freq = g3 << 1;
			KEY_CODES[12] : key_freq = a3 << 1;
			KEY_CODES[13] : key_freq = b3 << 1;

      // 3
			KEY_CODES[14] : key_freq = c3;
			KEY_CODES[15] : key_freq = d3;
			KEY_CODES[16] : key_freq = e3;
			KEY_CODES[17] : key_freq = f3;
			KEY_CODES[18] : key_freq = g3;
			KEY_CODES[19] : key_freq = a3;
			KEY_CODES[20] : key_freq = b3;

			default : key_freq = SILENCE; // silence
		endcase
	end

endmodule
