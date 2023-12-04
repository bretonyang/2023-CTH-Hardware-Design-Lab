// 110011138 ???

// e.g. 110123456 王大明
// Add your ID and name to FIRST line of file, or you will get 5 points penalty
module exam1_B(
    input wire clk,
    input wire rst,
    output wire [15:0] out// You can modify "reg" to "wire" if needed
);
    //Your design here
    parameter UP = 0;
    parameter DOWN = 1;
    
    reg [15:0] c, next_c, prev_c, next_prev_c;
    reg [20:0] i, next_i;
    reg [20:0] S; // more bits just to be safe
    reg dir, next_dir;
    
    assign out = c;
    
    // Sequential block
    always @(posedge clk) begin
    	if (rst == 1) begin
    		c <= 1;
    		prev_c <= 0;
    		dir <= UP;
    		i <= 1;
    	end
    	else begin
    	 	c <= next_c;
    	 	prev_c <= next_prev_c;
    	 	dir <= next_dir;
    	 	i <= next_i;
    	end
    end
    
    // Combinational block
    always @(*) begin
    	// default
    	S = prev_c + c;
    	next_c = c;
    	next_prev_c = c;
    	next_i = i + 1;
    	next_dir = dir;
    
    	case (dir)
    		UP: begin
    			// 11 = 00001011 % 4 = 3 = 11, 10 = 00001010 % 4 = 2 = 10
    			if (S[1:0] == 0) begin
    				if (S < 16384) next_c = (S >> 1) * 3;
    				else next_c = c + i;
    			end
    			else begin
    				if (i[0] == 1) next_c = c + 4;
    				else next_c = c + 1;
    			end
    			
    			if (next_c == 65176) begin
    				next_dir = DOWN;
    				next_i = 1;
    			end
    		end
    		DOWN: begin
    			// 8 = 00001000 % 8 = 000, 7 = 00000111 % 8 = 7 = 111
    			if (S[2:0] == i[2:0]) next_c = c >> (i[1:0]);
    			else begin
    				if (c < i * 6) next_c = 0;
    				else next_c = c - (i * 6);
    			end
    			
    			if (c == 0) begin
    				next_dir = UP;
    				next_i = 1;
    				next_c = 1;
    			end
    		end
    	endcase
    end

endmodule



// You can add any module you need.
// Make sure you include all modules you used in this problem.








