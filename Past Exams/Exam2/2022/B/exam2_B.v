// <Student_ID> <Name>

// Add your ID and name to FIRST line of file, or you will get 5 points penalty
// e.g. 110123456 王小明
module exam2_B (
    input clk, 
    input rst, 
    input en, 
    inout PS2_DATA, 
	inout PS2_CLK, 
    output [3:0] DIGIT, 
    output [6:0] DISPLAY,
    output [15:0] led
);
    parameter [8:0] KEY_CODES [0:9] = {
        9'b0_0111_0000, // right_0 => 70
        9'b0_0110_1001, // right_1 => 69
        9'b0_0111_0010, // right_2 => 72
        9'b0_0111_1010, // right_3 => 7A
        9'b0_0110_1011, // right_4 => 6B
        9'b0_0111_0011, // right_5 => 73
        9'b0_0111_0100, // right_6 => 74
        9'b0_0110_1100, // right_7 => 6C
        9'b0_0111_0101, // right_8 => 75
        9'b0_0111_1101  // right_9 => 7D
	};

    // add your design here

endmodule


// provided modules
module clock_divider #(parameter n=25) (clk, clk_div);
    input clk;
    output clk_div;

    reg [n-1:0] num = 0;
    wire [n-1:0] next_num;

    always @(posedge clk) begin
        num <= next_num;
    end

    assign next_num = num + 1;
    assign clk_div = num[n-1];
endmodule


module debounce (pb, clk, pb_debounced);
    input pb;
    input clk;
    output pb_debounced;

    reg [3:0] shift_reg;

    always @(posedge clk) begin
        shift_reg[3:1] <= shift_reg[2:0];
        shift_reg[0] <= pb;
    end

    assign pb_debounced = ((shift_reg == 4'b1111) ? 1'b1 : 1'b0);
endmodule


module one_pulse (pb_debounced, clk, pb_one_pulse);
    input pb_debounced;
    input clk;
    output pb_one_pulse;
    
    reg pb_one_pulse;
    reg pb_debounced_delay;

    always @(posedge clk) begin
        if(pb_debounced == 1'b1 && pb_debounced_delay == 1'b0) begin
            pb_one_pulse <= 1'b1;
        end else begin
            pb_one_pulse <= 1'b0;
        end            
        pb_debounced_delay <= pb_debounced;
    end
endmodule


module seven_segment (
    input clk, 
    input [3:0] digit_0,
    input [3:0] digit_1, 
    input [3:0] digit_2, 
    input [3:0] digit_3, 
    output reg [3:0] DIGIT, 
    output reg [6:0] DISPLAY
);
    reg [3:0] value;

    always @(posedge clk) begin
        case (DIGIT)
            4'b1110: begin
                value <= digit_1;
                DIGIT <= 4'b1101;
            end 
            4'b1101: begin
                value <= digit_2;
                DIGIT <= 4'b1011;
            end
            4'b1011: begin
                value <= digit_3;
                DIGIT <= 4'b0111;
            end
            4'b0111: begin
                value <= digit_0;
                DIGIT <= 4'b1110;
            end
            default: begin
                value <= digit_0;
                DIGIT <= 4'b1110;
            end
        endcase
    end

    always @(*) begin
        case (value)
            4'd0:   DISPLAY = 7'b1000000;   // 0
            4'd1:   DISPLAY = 7'b1111001;   // 1
            4'd2:   DISPLAY = 7'b0100100;   // 2
            4'd3:   DISPLAY = 7'b0110000;   // 3
            4'd4:   DISPLAY = 7'b0011001;   // 4
            4'd5:   DISPLAY = 7'b0010010;   // 5
            4'd6:   DISPLAY = 7'b0000010;   // 6
            4'd7:   DISPLAY = 7'b1111000;   // 7
            4'd8:   DISPLAY = 7'b0000000;   // 8
            4'd9:   DISPLAY = 7'b0010000;   // 9
            4'd10:  DISPLAY = 7'b0111111;   // -
            default:DISPLAY = 7'b1111111;   // no light
        endcase
    end

endmodule


module KeyboardDecoder(
    input wire rst,
    input wire clk,
    inout wire PS2_DATA,
    inout wire PS2_CLK,
    output reg [511:0] key_down,
    output wire [8:0] last_change,
    output reg key_valid
);
    
    parameter [1:0] INIT			= 2'b00;
    parameter [1:0] WAIT_FOR_SIGNAL = 2'b01;
    parameter [1:0] GET_SIGNAL_DOWN = 2'b10;
    parameter [1:0] WAIT_RELEASE    = 2'b11;
    
    parameter [7:0] IS_INIT			= 8'hAA;
    parameter [7:0] IS_EXTEND		= 8'hE0;
    parameter [7:0] IS_BREAK		= 8'hF0;
    
    reg [9:0] key;		// key = {been_extend, been_break, key_in}
    reg [1:0] state;
    reg been_ready, been_extend, been_break;
    
    wire [7:0] key_in;
    wire is_extend;
    wire is_break;
    wire valid;
    wire err;
    
    wire [511:0] key_decode = 1 << last_change;
    assign last_change = {key[9], key[7:0]};
    
    KeyboardCtrl_0 inst (
		.key_in(key_in),
		.is_extend(is_extend),
		.is_break(is_break),
		.valid(valid),
		.err(err),
		.PS2_DATA(PS2_DATA),
		.PS2_CLK(PS2_CLK),
		.rst(rst),
		.clk(clk)
	);
	
	one_pulse op (
		.pb_one_pulse(pulse_been_ready),
		.pb_debounced(been_ready),
		.clk(clk)
	);

    always @ (posedge clk, posedge rst) begin
    	if (rst) begin
    		state <= INIT;
    		been_ready  <= 1'b0;
    		been_extend <= 1'b0;
    		been_break  <= 1'b0;
    		key <= 10'b0_0_0000_0000;
    	end else begin
    		state <= state;
			been_ready  <= been_ready;
			been_extend <= (is_extend) ? 1'b1 : been_extend;
			been_break  <= (is_break ) ? 1'b1 : been_break;
			key <= key;
    		case (state)
    			INIT : begin
    					if (key_in == IS_INIT) begin
    						state <= WAIT_FOR_SIGNAL;
    						been_ready  <= 1'b0;
							been_extend <= 1'b0;
							been_break  <= 1'b0;
							key <= 10'b0_0_0000_0000;
    					end else begin
    						state <= INIT;
    					end
    				end
    			WAIT_FOR_SIGNAL : begin
    					if (valid == 0) begin
    						state <= WAIT_FOR_SIGNAL;
    						been_ready <= 1'b0;
    					end else begin
    						state <= GET_SIGNAL_DOWN;
    					end
    				end
    			GET_SIGNAL_DOWN : begin
						state <= WAIT_RELEASE;
						key <= {been_extend, been_break, key_in};
						been_ready  <= 1'b1;
    				end
    			WAIT_RELEASE : begin
    					if (valid == 1) begin
    						state <= WAIT_RELEASE;
    					end else begin
    						state <= WAIT_FOR_SIGNAL;
    						been_extend <= 1'b0;
    						been_break  <= 1'b0;
    					end
    				end
    			default : begin
    					state <= INIT;
						been_ready  <= 1'b0;
						been_extend <= 1'b0;
						been_break  <= 1'b0;
						key <= 10'b0_0_0000_0000;
    				end
    		endcase
    	end
    end
    
    always @ (posedge clk, posedge rst) begin
    	if (rst) begin
    		key_valid <= 1'b0;
    		key_down <= 511'b0;
    	end else if (key_decode[last_change] && pulse_been_ready) begin
    		key_valid <= 1'b1;
    		if (key[8] == 0) begin
    			key_down <= key_down | key_decode;
    		end else begin
    			key_down <= key_down & (~key_decode);
    		end
    	end else begin
    		key_valid <= 1'b0;
			key_down <= key_down;
    	end
    end

endmodule