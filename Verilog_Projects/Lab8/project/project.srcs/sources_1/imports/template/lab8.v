module Lab8(
    input clk,
    input rst,
    input echo,
    input left_track,
    input right_track,
    input mid_track,
    output trig,
    output IN1,
    output IN2,
    output IN3, 
    output IN4,
    output left_pwm,
    output right_pwm,
    // You may modify or add more input/ouput yourself.
    output [15:0] LED,
    output [6:0] DISPLAY,
    output [3:0] DIGIT
);

    wire [19:0] distance;
    wire [2:0] state;
    reg [15:0] nums;

    // We have connected the motor and sonic_top modules in the template file for you.
    // TODO: control the motors with the information you get from ultrasonic sensor and 3-way track sensor.
    motor A(
        .clk(clk),
        .rst(rst),
        .state(state),
        .pwm({left_pwm, right_pwm}),
        // .l_IN({IN1, IN2}),
        // .r_IN({IN3, IN4})
        .r_IN({IN1, IN2}),
        .l_IN({IN3, IN4})
    );

    sonic_top B(
        .clk(clk), 
        .rst(rst), 
        .Echo(echo), 
        .Trig(trig),
        .distance(distance)
    );

    tracker_sensor C(
        .clk(clk),
        .rst(rst),
        .left_track(left_track),
        .right_track(right_track),
        .mid_track(mid_track),
        .distance(distance),
        .state_out(state)
    );

    SevenSegment SevenSegment_inst(
        .display(DISPLAY),
        .digit(DIGIT),
        .nums(nums),
        .clk(clk),
        .rst(rst)
    );

    assign LED[14:11] = (left_track == 1'b0) ? 4'b1111 : 4'b0000;
    assign LED[9:6] = (mid_track == 1'b0) ? 4'b1111 : 4'b0000;
    assign LED[4:1] = (right_track == 1'b0) ? 4'b1111 : 4'b0000;

    always @(*) begin
        nums[15:12] = distance / 1000;
        nums[11:8] = distance / 100 % 10; 
        nums[7:4] = distance / 10 % 10;
        nums[3:0] = distance % 10;
    end

endmodule

module SevenSegment(
	output reg [6:0] display,
	output reg [3:0] digit,
	input wire [15:0] nums, // 4 4-bit nums
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
    		    0 : display = 7'b1000000;	// 0
				1 : display = 7'b1111001;   // 1
				2 : display = 7'b0100100;   // 2
				3 : display = 7'b0110000;   // 3                                          
				4 : display = 7'b0011001;   // 4                                               
				5 : display = 7'b0010010;   // 5                                              
				6 : display = 7'b0000010;   // 6
				7 : display = 7'b1111000;   // 7
				8 : display = 7'b0000000;   // 8
				9 : display = 7'b0010000;	// 9
				default : display = 7'b1111111;
    	endcase
    end
    
endmodule