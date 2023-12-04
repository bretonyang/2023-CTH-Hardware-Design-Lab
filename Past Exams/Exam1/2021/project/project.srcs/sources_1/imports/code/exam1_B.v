// 110011138 楊立慈

// e.g. 109012345 王大明
// Add your ID and name to FIRST line of file, or you will get 5 points penalty
module exam1_B(
    input wire clk,
    input wire rst,
    output reg signed [19:0] result // You can modify "reg" to "wire" if needed
);
    //Your design here
    
    // LIMIT: 183921
    parameter UP = 1'b0;
    parameter DOWN = 1'b1;
    
    reg signed [19:0] next_result;
    reg signed [19:0] i, next_i;
    reg dir, next_dir;
    
    always @(posedge clk) begin
    	if (rst == 1) begin
    		result <= 0;
    		i <= 1;
    		dir <= UP;
    	end
    	else begin
    		result <= next_result;
    		i <= next_i;
    		dir <= next_dir;
    	end
    end
    
    always @(*) begin
    	next_i = i + 1;
    	next_result = result;
    	next_dir = dir;
    	
    	case (dir)
    		UP: begin
    			if (result % 8 == i % 8) next_result = result + i * 3;
    			else next_result = result + i;
    			
    			if (next_result == 183921) begin
					next_dir = DOWN;
					next_i = 1;
				end
			end
    		DOWN: begin
    			next_result = result - i;
    			
    			if (next_result == 0) begin
					next_dir = UP;
					next_i = 1;
				end
			end
    	endcase
    end

endmodule

// You can add any module you need.
// Make sure you include all modules you used in this problem.
