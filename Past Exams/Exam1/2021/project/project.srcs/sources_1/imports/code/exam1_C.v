// 110011138 楊立慈

// e.g. 109012345 王大明
// Add your ID and name to FIRST line of file, or you will get 5 points penalty


module exam1_C(
    input wire clk, // 100Mhz clock
    input wire rst_btn,
    input wire start_btn,
    input wire [15:0] sw,
    output wire [3:0] DIGIT,
    output wire [6:0] DISPLAY,
    output reg [15:0] led // You can modify "wire" of output ports to "reg" if needed
);
    //Your design here
    
    parameter RESET = 2'b00;
    parameter START = 2'b01;
    parameter PAUSE = 2'b10;
    parameter RIGHT = 1'b0;
    parameter LEFT = 1'b1;
    
    
    reg [1:0] state = RESET, next_state;
    reg [4:0] pos1 = 1, next_pos1, pos2 = 10, next_pos2;
    reg dir1 = LEFT, next_dir1, dir2 = RIGHT, next_dir2;
    reg [4:0] collisions = 0, next_collisions;
    reg [15:0] nums = {4'd12, 4'd15, 4'd0, 4'd0};
    
 	wire clk_div13, clk_div15, clk_div25; 
	clock_divider #(13) cd1 (.clk(clk), .clk_div(clk_div13));
	clock_divider #(15) cd2 (.clk(clk), .clk_div(clk_div15));
	clock_divider #(25) cd3 (.clk(clk), .clk_div(clk_div25));
	
	wire rst_db, start_db, rst, start;
	debounce d1 (.pb_debounced(rst_db), .pb(rst_btn), .clk(clk_div13));
	debounce d2 (.pb_debounced(start_db), .pb(start_btn), .clk(clk_div13));
	onepulse o1 (.pb_debounced(rst_db), .clk(clk_div13), .pb_1pulse(rst));
	onepulse o2 (.pb_debounced(start_db), .clk(clk_div13), .pb_1pulse(start));
	
	SevenSegment ss1 (.display(DISPLAY), .digit(DIGIT), .nums(nums), .rst(rst), .clk_div(clk_div15));


	always @(posedge clk_div13) begin
		state <= next_state;
	end
	
	always @(posedge clk_div25) begin
		pos1 <= next_pos1;
		pos2 <= next_pos2;
		dir1 <= next_dir1;
		dir2 <= next_dir2;
		collisions <= next_collisions;
	end
	
	// nums
	/**
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
			10: display = 7'b0010010;	//S
			11: display = 7'b0001100;	//P
			12: display = 7'b0001000;	//R
			default : display = 7'b1111111;
    */
	always @(*) begin
		// default
		nums = {4'd12, 4'd15, 4'd0, 4'd0};
	
		case (state)
			RESET: begin
				nums = {4'd12, 4'd15, 4'd0, 4'd0};
			end
			START: begin
				nums[15:8] = {4'd10, 4'd15};
				nums[7:4] = collisions / 10;
				nums[3:0] = collisions % 10;
			end
			PAUSE: begin
				nums[15:8] = {4'd11, 4'd15};
				nums[7:4] = collisions / 10;
				nums[3:0] = collisions % 10;
			end
		endcase
	end
	
	// led
	always @(*) begin
		// default
		led = sw;
		led[pos1] = 1;
		led[pos2] = 1;
	end
	
	// next_states
	always @(*) begin
		// default
		next_pos1 = pos1;
		next_pos2 = pos2;
		next_dir1 = dir1;
		next_dir2 = dir2;
		next_state = state;
		next_collisions = collisions;
	
		case (state)
			RESET: begin
				next_pos1 = 1;
				next_pos2 = 10;
				next_dir1 = LEFT;
				next_dir2 = RIGHT;
				next_collisions = 0;
				if (start == 1) next_state = START;
			end
			START: begin
				if (rst == 1) next_state = RESET;
				else if (start == 1 || collisions == 15) next_state = PAUSE;
				
				// pos1 walk
				case (dir1)
					RIGHT: begin
						// walk right
						if (pos1 == 0) next_pos1 = 15;
						else next_pos1 = pos1 - 1;
						
						// can't walk right
						if (led[next_pos1] == 1) begin
							if (next_pos1 == pos2) next_collisions = collisions + 1;
						
							// walk left
							next_dir1 = LEFT;
							if (pos1 == 15) next_pos1 = 0;
							else next_pos1 = pos1 + 1;
							
							// can't walk left
							if (led[next_pos1] == 1) begin
								next_dir1 = dir1;
								next_pos1 = pos1;
							end
						end
					end
					LEFT: begin
						// walk left
						if (pos1 == 15) next_pos1 = 0;
						else next_pos1 = pos1 + 1;
						
						// can't walk left
						if (led[next_pos1] == 1) begin
							if (next_pos1 == pos2) next_collisions = collisions + 1;
						
							// walk right
							next_dir1 = RIGHT;
							if (pos1 == 0) next_pos1 = 15;
							else next_pos1 = pos1 - 1;
							
							// can't walk left
							if (led[next_pos1] == 1) begin
								next_dir1 = dir1;
								next_pos1 = pos1;
							end
						end
					end
				endcase
				
				// pos2 walk
				case (dir2)
					RIGHT: begin
						// walk right
						if (pos2 == 0) next_pos2 = 15;
						else next_pos2 = pos2 - 1;
						
						// can't walk right
						if (led[next_pos2] == 1) begin
							if (next_pos2 == pos1) next_collisions = collisions + 1;
						
							// walk left
							next_dir2 = LEFT;
							if (pos2 == 15) next_pos2 = 0;
							else next_pos2 = pos2 + 1;
							
							// can't walk left
							if (led[next_pos2] == 1) begin
								next_dir2 = dir2;
								next_pos2 = pos2;
							end
						end
					end
					LEFT: begin
						// walk left
						if (pos2 == 15) next_pos2 = 0;
						else next_pos2 = pos2 + 1;
						
						// can't walk left
						if (led[next_pos2] == 1) begin
							if (next_pos2 == pos1) next_collisions = collisions + 1;
						
							// walk right
							next_dir2 = RIGHT;
							if (pos2 == 0) next_pos2 = 15;
							else next_pos2 = pos2 - 1;
							
							// can't walk left
							if (led[next_pos2] == 1) begin
								next_dir2 = dir2;
								next_pos2 = pos2;
							end
						end
					end
				endcase
			end
			PAUSE: begin
				if (rst == 1) next_state = RESET;
				else if (start == 1 && collisions < 15) next_state = START;
			end
		endcase
	end

endmodule

// You can modify below modules I/O or content if needed.
// Also you can add any module you need.
// Make sure you include all modules you used in this file.

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

module SevenSegment(
	output reg [6:0] display,
	output reg [3:0] digit, 
	input wire [15:0] nums, // four 4-bits BCD number
	input wire rst,
	input wire clk_div
);
    
    reg [3:0] display_num;
    
    always @ (posedge clk_div, posedge rst) begin
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
			10: display = 7'b0010010;	//S
			11: display = 7'b0001100;	//P
			12: display = 7'b0001000;	//R
			default : display = 7'b1111111;
    	endcase
    end
    
endmodule

module clock_divider(clk, clk_div);   
    parameter n = 26;     
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