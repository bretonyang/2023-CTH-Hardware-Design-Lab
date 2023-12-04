// This module take "mode" input and control two motors accordingly.
// clk should be 100MHz for PWM_gen module to work correctly.
// You can modify / add more inputs and outputs by yourself.
module motor(
    input clk,
    input rst,
    input [2:0] state,
    output [1:0] pwm,
    output reg [1:0] r_IN,
    output reg [1:0] l_IN
);

    parameter [2:0] STOP = 3'b000;
    parameter [2:0] FORWARD = 3'b001;
    parameter [2:0] LEFT = 3'b010;
    parameter [2:0] RIGHT = 3'b011;
    parameter [2:0] H_LEFT = 3'b100;
    parameter [2:0] H_RIGHT = 3'b101;
    parameter [2:0] BACK_LEFT = 3'b110;
    parameter [2:0] BACK_RIGHT = 3'b111;

    // note: duty / 1024 is the duty %
    // e.g., for 70 % cycle, assign duty = 716
    reg [9:0] left_motor, right_motor; // duty
    wire left_pwm, right_pwm;

    motor_pwm m0(clk, rst, left_motor, left_pwm);
    motor_pwm m1(clk, rst, right_motor, right_pwm);

    assign pwm = {left_pwm,right_pwm};

    // TODO: trace the rest of motor.v and control the speed and direction of the two motors

    always @(*) begin
        left_motor = 700; // 68% speed
        right_motor = 700; // 68% speed
        r_IN = 2'b00;
        l_IN = 2'b00;

        case (state)
            STOP: begin
                r_IN = 2'b00;
                l_IN = 2'b00;
            end
            FORWARD: begin
                r_IN = 2'b01;
                l_IN = 2'b01;
                left_motor = 900;
                right_motor = 900;
            end
            LEFT: begin
                l_IN = 2'b00;
                r_IN = 2'b01;
                left_motor = 700; 
                right_motor = 700; // forward
            end
            RIGHT: begin
                l_IN = 2'b01;
                r_IN = 2'b00;
                left_motor = 700; // forward
                right_motor = 700; 
            end
            H_LEFT: begin
                l_IN = 2'b10;
                r_IN = 2'b01; 
                left_motor = 700;
                right_motor = 780; // forward
            end
            H_RIGHT: begin
                l_IN = 2'b01;
                r_IN = 2'b10; 
                left_motor = 780; // forward
                right_motor = 700;
            end
            BACK_LEFT: begin
                l_IN = 2'b10;
                r_IN = 2'b00;
                left_motor = 700;
                right_motor = 500; 
            end
            BACK_RIGHT: begin
                l_IN = 2'b00;
                r_IN = 2'b10; 
                left_motor = 500;
                right_motor = 700;
            end
        endcase
    end
    
endmodule

module motor_pwm (
    input clk,
    input reset,
    input [9:0] duty,
	output pmod_1 //PWM
);
        
    PWM_gen pwm_0 ( 
        .clk(clk), 
        .reset(reset), 
        .freq(32'd25000),
        .duty(duty), 
        .PWM(pmod_1)
    );

endmodule

//generte PWM by input frequency & duty cycle
module PWM_gen (
    input wire clk,
    input wire reset,
	input [31:0] freq,
    input [9:0] duty,
    output reg PWM
);
    wire [31:0] count_max = 100_000_000 / freq;
    wire [31:0] count_duty = count_max * duty / 1024;
    reg [31:0] count;
        
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            count <= 0;
            PWM <= 0;
        end else if (count < count_max) begin
            count <= count + 1;
            // TODO: set <PWM> accordingly
            if (count < count_duty) PWM <= 1;
            else PWM <= 0;
        end else begin
            count <= 0;
            PWM <= 0;
        end
    end
endmodule

