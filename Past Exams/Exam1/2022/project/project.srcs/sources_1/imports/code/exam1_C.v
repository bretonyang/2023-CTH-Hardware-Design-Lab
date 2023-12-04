// <Student_ID> <Name>

// e.g. 110123456 王大明
// Add your ID and name to FIRST line of file, or you will get 5 points penalty

module exam1_C(
    input wire clk, // 100Mhz clock
    input wire rst,
    input wire en,
    input wire set,
    input wire up,
    input wire down,
    input wire [15:0] sw,
    output wire [3:0] DIGIT,
    output wire [6:0] DISPLAY,
    output reg [15:0] led
);
    //Your design here
    
    // parameter
    parameter START = 1'b0;
    parameter FINISH = 1'b1;
    
    parameter LEFT = 1'b0;
    parameter RIGHT = 1'b1;
    
    // variable
    reg [15:0] flags = 0, next_flags;
    
    reg [3:0] ai_point, next_ai_point;
    reg [3:0] player_point, next_player_point;
    
    reg [3:0] ai_pos, next_ai_pos;
    reg ai_dir, next_ai_dir;
    
    reg [3:0] player_pos, next_player_pos;
    reg [3:0] player_size, next_player_size;
    reg [3:0] player_left, player_right; // tmp variables
    
    reg state, next_state;
    reg [1:0] mode, next_mode;
    
    // clk
    wire clk_div_13, clk_div_25, clk_div_24, clk_div_26;
    clock_divider #(13) c1(.clk(clk), .clk_div(clk_div_13));
    clock_divider #(24) c2(.clk(clk), .clk_div(clk_div_24));
    clock_divider #(25) c3(.clk(clk), .clk_div(clk_div_25));
    clock_divider #(26) c4(.clk(clk), .clk_div(clk_div_26));
    
    wire player_clk = (mode == 0) ? clk_div_24 : (mode == 1 ? clk_div_25 : clk_div_26);
    
    // one-pulse
    wire en_db, en_p, set_db, set_p, up_db, up_p, down_db, down_p;
    
    debounce d1 (.pb_debounced(en_db), .pb(en), .clk(clk_div_13));
    debounce d2 (.pb_debounced(set_db), .pb(set), .clk(clk_div_13));
    debounce d3 (.pb_debounced(up_db), .pb(up), .clk(clk_div_13));
    debounce d4 (.pb_debounced(down_db), .pb(down), .clk(clk_div_13));
    
    onepulse o1(.pb_debounced(en_db), .clk(clk_div_13), .pb_1pulse(en_p));
    onepulse o2(.pb_debounced(set_db), .clk(clk_div_13), .pb_1pulse(set_p));
    onepulse o3(.pb_debounced(up_db), .clk(clk_div_13), .pb_1pulse(up_p));
    onepulse o4(.pb_debounced(down_db), .clk(clk_div_13), .pb_1pulse(down_p));
    
    // digit 
    reg [15:0] nums;
	SevenSegment ss(.display(DISPLAY), .digit(DIGIT), .nums(nums), .rst(rst), .clk(clk));
	
	always @(*) begin
		case (state)
			START: begin
				nums[15:12] = ai_point / 10;
				nums[11:8] = ai_point % 10;
				nums[7:4] = player_point / 10;
				nums[3:0] = player_point % 10;
			end
			FINISH: begin
				nums[15:12] = (ai_point == 10) ? 10 : 13;
				nums[11:8] = (ai_point == 10) ? 11 : 14;
				nums[7:4] = (ai_point == 10) ? 10 : 15;
				nums[3:0] = (ai_point == 10) ? 11 : 10;
			end
		endcase
	end
    
    // led finish
    reg [15:0] pattern;
    
    always @(posedge clk_div_24) begin
    	case (state)
    		START: pattern <= 16'b0101_0101_0101_0101;
    		FINISH: pattern <= ~pattern;
    	endcase
    end
    
    // enable signal
    reg enable = 0;
    always @(posedge clk_div_13) begin
    	if (rst == 1) begin
    		enable <= 0;
    	end
    	else if (en_p == 1) enable <= ~enable;
    end
    
    // DFF: flags (no rst, en)
    always @(posedge clk_div_13) begin
    	flags <= next_flags;
    end
 
    // DFF: state, mode, player_size
    always @(posedge clk_div_13) begin
    	if (rst == 1) begin
    		state <= START;
    		mode <= 1;
    		player_size <= 1; // on 1 side
    	end
    	else if (enable == 1) begin
    		state <= next_state;
    		mode <= next_mode;
    		player_size <= next_player_size;
    	end
    end
    
    // DFF: player_point, player_pos
    always @(posedge player_clk) begin
    	if (rst == 1) begin
    		player_pos <= 1;
    	end
    	else if (enable == 1) begin
    		player_pos <= next_player_pos;
    	end
    end
    
    always @(posedge clk_div_13) begin
    	if (rst == 1) begin
    		player_point <= 0;
    		ai_point <= 0;
    	end 
    	else if (enable == 1) begin
    		player_point <= next_player_point;
    		ai_point <= next_ai_point;
    	end
    end
    
    // DFF: ai_pos, ai_dir
    always @(posedge clk_div_25) begin
    	if (rst == 1) begin
    		ai_pos <= 15;
    		ai_dir <= RIGHT;
    	end
    	else if (enable == 1) begin
    		ai_pos <= next_ai_pos;
    		ai_dir <= next_ai_dir;
    	end
    end
    
    
    // Combinational
    always @(*) begin
    	// default
    	next_flags = flags;
    	next_state = state;
    	next_ai_point = ai_point;
    	next_ai_pos = ai_pos;
    	next_ai_dir = ai_dir;
    	next_player_pos = (player_pos == 15) ? 0 : player_pos + 1;
    	next_player_point = player_point;
    	next_player_size = player_size;
    	
    	// flag
    	if (set_p == 1) next_flags = sw;
    	
    	player_left = (player_pos > 15 - player_size) ? player_pos - (15 - player_size) - 1 : player_pos + player_size;
    	player_right = (player_pos < player_size) ? 15 - (player_size - player_pos) + 1 : player_pos - player_size; 
    	
    	// states
    	case (state)
    		START: begin
    			// state
    			if (ai_point == 10 || player_point == 10) begin
    				next_state = FINISH;
    			end
    			
    			if (up_p == 1) begin
    				next_mode = (mode == 2) ? 2 : mode + 1;
    				next_player_size = next_mode;
    			end 
    			if (down_p == 1) begin
    				next_mode = (mode == 0) ? 0 : mode - 1;
    				next_player_size = next_mode;
    			end
    			
    			case (ai_dir)
    				RIGHT: begin
    				 	next_ai_pos = (ai_pos == 0) ? 15 : ai_pos - 1;
    				 	if ((player_left >= player_right && next_ai_pos <= player_left && next_ai_pos >= player_right)
    				 	    || (player_left < player_right && (next_ai_pos <= player_left || next_ai_pos >= player_right))) begin
    				 	   
    				 		next_ai_dir = LEFT;
    				 		next_ai_pos = (ai_pos == 15) ? 0 : ai_pos + 1;
    				 	end
    				end
    				LEFT: begin
    					next_ai_pos = (ai_pos == 15) ? 0 : ai_pos + 1;
    				 	if ((player_left >= player_right && next_ai_pos <= player_left && next_ai_pos >= player_right)
    				 	    || (player_left < player_right && (next_ai_pos <= player_left || next_ai_pos >= player_right))) begin
    				 	   
    				 		next_ai_dir = RIGHT;
    				 		next_ai_pos = (ai_pos == 0) ? 15 : ai_pos - 1;
    				 	end
    				end
    			endcase
    			
    			if (flags[ai_pos] == 1) begin
    				next_ai_point = ai_point + 1;
    				next_flags[ai_pos] = 0;
    			end
    			else if (flags[player_pos] == 1) begin
    				next_player_point = player_point + 1;
    				next_flags[player_pos] = 0;
    			end
    			
    			led = flags;
    			led[ai_pos] = 1;
    			led[player_pos] = 1;
    			led[player_left] = 1;
    			led[player_right] = 1;
    			if (player_size == 2) begin
    				if (player_left == 0) led[15] = 1;
    				else led[player_left - 1] = 1;
    				
    				if (player_right == 15) led[0] = 1;
    				else led[player_right + 1] = 1;
    			end
    		end
    		FINISH: begin
    			led = pattern;
    		end
    	endcase
    
    end

endmodule

// You can modify below modules I/O or content if needed.
// Also you can add any module you need.
// Make sure you include all modules you used in this file.

module SevenSegment(
	output reg [6:0] display,
	output reg [3:0] digit,
	input wire [15:0] nums,
	input wire rst,
	input wire clk
);
    
    reg [15:0] clk_divider;
    reg [3:0] display_num;
    
    always @ (posedge clk, posedge rst) begin
    	if (rst) begin
    		clk_divider <= 15'b0;
    	end else begin
    		clk_divider <= clk_divider + 15'b1;
    	end
    end
    
    always @ (posedge clk_divider[15], posedge rst) begin
    	if (rst) begin
    		display_num <= 4'b0000;
    		digit <= 4'b1111;
    	end else begin
    		case (digit)
    			4'b1110 : begin
    					display_num <= nums[7:4];
    					digit <= 4'b1101;
    				end
    			4'b1101 : begin
						display_num <= nums[11:8];
						digit <= 4'b1011;
					end
    			4'b1011 : begin
						display_num <= nums[15:12];
						digit <= 4'b0111;
					end
    			4'b0111 : begin
						display_num <= nums[3:0];
						digit <= 4'b1110;
					end
    			default : begin
						display_num <= nums[3:0];
						digit <= 4'b1110;
					end				
    		endcase
    	end
    end
    
    always @ (*) begin
    	case (display_num)
    		0 : display = 7'b1000000;	//0000
			1 : display = 7'b1111001;   //0001
			2 : display = 7'b0100100;   //0010
			3 : display = 7'b0110000;   //0011
			4 : display = 7'b0011001;   //0100
			5 : display = 7'b0010010;   //0101
			6 : display = 7'b0000010;   //0110
			7 : display = 7'b1111000;   //0111
			8 : display = 7'b0000000;   //1000
			9 : display = 7'b0010000;	//1001
			10: display = 7'b0001000;	//A,R
			11: display = 7'b1111001;	//I
			13: display = 7'b1000001;	//U
			14: display = 7'b0010010;	//S
			15: display = 7'b0000110;	//E
			default : display = 7'b1111111;
    	endcase
    end
    
endmodule

module clock_divider #(parameter n = 26) (clk, clk_div);   
    input clk;   
    output clk_div;   
    
    reg [n-1:0] num;
    wire [n-1:0] next_num;
    
    always@(posedge clk)begin
    	num <= next_num;
    end
    
    assign next_num = num +1;
    assign clk_div = num[n-1];
    
endmodule

module debounce (pb_debounced, pb, clk); 
	output pb_debounced;
	input pb;
	input clk; 
	reg [3:0] DFF;
	always @(posedge clk) begin 
		DFF[3:1] <= DFF[2:0]; 
		DFF[0] <= pb; 
	end
	assign pb_debounced = ((DFF == 4'b1111) ? 1'b1 : 1'b0);

endmodule

module onepulse(pb_debounced, clk, pb_1pulse);	
	input pb_debounced;	
	input clk;	
	output pb_1pulse;	

	reg pb_1pulse;	
	reg pb_debounced_delay;	

	always@(posedge clk) begin
		pb_1pulse <= pb_debounced & (! pb_debounced_delay);
		pb_debounced_delay <= pb_debounced;
	end	
endmodule