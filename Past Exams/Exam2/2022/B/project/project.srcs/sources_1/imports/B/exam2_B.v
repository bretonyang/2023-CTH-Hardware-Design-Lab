// 110011138 楊立慈

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
    output reg [15:0] led
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
    parameter [3:0] NAN = 4'b1111; // key_num
    parameter [3:0] DASH = 4'd10; // nums
    parameter [3:0] EMPTY = 4'd11; // nums

    // add your design here

    parameter [1:0] INIT = 2'b00;
    parameter [1:0] SET = 2'b01;
    parameter [1:0] GUESS = 2'b10;
    parameter [1:0] CHECK = 2'b11;

    wire en_db, en_p;
    debounce db0 (.pb(en), .clk(clk), .pb_debounced(en_db));
    one_pulse op0 (.pb_debounced(en_db), .clk(clk), .pb_one_pulse(en_p));

    wire clk_div25, clk_div13;
    clock_divider #(25) c1 (.clk(clk), .clk_div(clk_div25));
    clock_divider #(13) c2 (.clk(clk), .clk_div(clk_div13));

    wire [511:0] key_down;
    wire [8:0] last_change; 
    wire been_ready;

    reg [3:0] key_num;

    KeyboardDecoder kd0 (
         .rst(rst),
         .clk(clk),
         .PS2_DATA(PS2_DATA),
         .PS2_CLK(PS2_CLK),
         .key_down(key_down),
         .last_change(last_change),
         .key_valid(been_ready)
    );

    reg [1:0] state, next_state;
    reg [3:0] password [3:0];
    reg [3:0] next_password [3:0];
    reg [3:0] guess [3:0];
    reg [3:0] next_guess [3:0];

    reg [15:0] nums;
    seven_segment ss0 (.clk(clk_div13), .nums(nums), .DIGIT(DIGIT), .DISPLAY(DISPLAY));

    reg [3:0] counter, next_counter; // for rounds

    // DFF: state, password, guess
    always @(posedge clk, posedge rst) begin
        if (rst) begin
            state <= INIT;
            password[0] <= 0;
            password[1] <= 0;
            password[2] <= 0;
            password[3] <= 0;
            guess[0] <= 0;
            guess[1] <= 0;
            guess[2] <= 0;
            guess[3] <= 0;
        end
        else begin
            state <= next_state;
            password[0] <= next_password[0];
            password[1] <= next_password[1];
            password[2] <= next_password[2];
            password[3] <= next_password[3];
            guess[0] <= next_guess[0];
            guess[1] <= next_guess[1];
            guess[2] <= next_guess[2];
            guess[3] <= next_guess[3];
        end
    end

    // Comb: state, password, guess
    always @(*) begin
       next_state = state;
       next_password[0] = password[0]; 
       next_password[1] = password[1]; 
       next_password[2] = password[2]; 
       next_password[3] = password[3]; 
       next_guess[0] = guess[0];
       next_guess[1] = guess[1];
       next_guess[2] = guess[2];
       next_guess[3] = guess[3];

       case (state)
            INIT: begin
                if (en_p == 1) next_state = SET;

                {next_password[3], next_password[2], next_password[1], next_password[0]} = {4'd0, 4'd0, 4'd0, 4'd0};
                {next_guess[3], next_guess[2], next_guess[1], next_guess[0]} = {4'd0, 4'd0, 4'd0, 4'd0};
            end
            SET: begin
                if (en_p == 1) next_state = GUESS;

                if (been_ready && key_down[last_change] && key_num != NAN) begin
                    {next_password[3], next_password[2], next_password[1], next_password[0]} = 
                        {password[2], password[1], password[0], key_num};
                end

                {next_guess[3], next_guess[2], next_guess[1], next_guess[0]} = {4'd0, 4'd0, 4'd0, 4'd0};
            end
            GUESS: begin 
                if (en_p == 1) next_state = CHECK;

                if (been_ready && key_down[last_change] && key_num != NAN) begin
                    {next_guess[3], next_guess[2], next_guess[1], next_guess[0]} = 
                        {guess[2], guess[1], guess[0], key_num};
                end
            end
            CHECK: begin
                if (counter == 5) begin
                    if (password[0] == guess[0] && password[1] == guess[1] && password[2] == guess[2] && password[3] == guess[3])
                        next_state = INIT;
                    else next_state = GUESS;
                end
            end
       endcase
    end

    // DFF: counter
    always @(posedge clk_div25, posedge rst) begin
        if (rst) counter <= 0;
        else counter <= next_counter;
    end

    always @(*) begin
        next_counter = counter;
        case (state)
            INIT: next_counter = 0;
            SET: next_counter = 0;
            GUESS: next_counter = 0;
            CHECK: next_counter = (counter >= 5) ? 5 : counter + 1;
        endcase
    end

    // Comb: led, nums
    always @(*) begin
        led = 16'd0;
        nums = {DASH, DASH, DASH, DASH};

        case (state)
            INIT: begin
                led[15:12] = 4'b1111;
            end
            SET: begin
                led[11:8] = 4'b1111;
                nums = {password[3], password[2], password[1], password[0]};
            end
            GUESS: begin
                led[7:4] = 4'b1111;
                nums = {guess[3], guess[2], guess[1], guess[0]};
            end
            CHECK: begin
                led[3:0] = 4'b1111;
                if (counter == 1 || counter == 3) begin
                    if (password[0] == guess[0] && password[1] == guess[1] && password[2] == guess[2] && password[3] == guess[3])
                        nums = {4'd1, 4'd1, 4'd1, 4'd1};
                    else 
                        nums = {4'd0, 4'd0, 4'd0, 4'd0};
                end
                else nums = {EMPTY, EMPTY, EMPTY, EMPTY};
            end
        endcase
    end

    // Comb: key_num
    always @(*) begin
        case (last_change)
            KEY_CODES[00]: key_num = 4'd0;
            KEY_CODES[01]: key_num = 4'd1;
            KEY_CODES[02]: key_num = 4'd2;
            KEY_CODES[03]: key_num = 4'd3;
            KEY_CODES[04]: key_num = 4'd4;
            KEY_CODES[05]: key_num = 4'd5;
            KEY_CODES[06]: key_num = 4'd6;
            KEY_CODES[07]: key_num = 4'd7;
            KEY_CODES[08]: key_num = 4'd8;
            KEY_CODES[09]: key_num = 4'd9;
            default: key_num = NAN; 
        endcase
    end

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
    input [15:0] nums,
    output reg [3:0] DIGIT, 
    output reg [6:0] DISPLAY
);
    reg [3:0] value;

    always @(posedge clk) begin
        case (DIGIT)
            4'b1110: begin
                value <= nums[7:4];
                DIGIT <= 4'b1101;
            end 
            4'b1101: begin
                value <= nums[11:8];
                DIGIT <= 4'b1011;
            end
            4'b1011: begin
                value <= nums[15:12];
                DIGIT <= 4'b0111;
            end
            4'b0111: begin
                value <= nums[3:0];
                DIGIT <= 4'b1110;
            end
            default: begin
                value <= nums[3:0];
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
