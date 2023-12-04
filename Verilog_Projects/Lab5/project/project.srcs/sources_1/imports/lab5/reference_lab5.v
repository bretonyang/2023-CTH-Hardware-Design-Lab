module reference_Lab5(
	output wire [6:0] display,
	output wire [3:0] digit,
	output reg [15:0] LED,
	inout wire PS2_DATA,
	inout wire PS2_CLK,
	input wire rst,
	input wire clk,
	input wire btnL,
	input wire btnR
	);
	
	parameter [8:0] LEFT_SHIFT_CODES  = 9'b0_0001_0010;
	parameter [8:0] RIGHT_SHIFT_CODES = 9'b0_0101_1001;
	parameter [8:0] space  =9'b0_0010_1001;
	parameter [8:0] enter  =9'b0_0101_1010 ;
	parameter [8:0] KEY_CODES [0:19] = {
		9'b0_0100_0101,	// 0 => 45
		9'b0_0001_0110,	// 1 => 16
		9'b0_0001_1110,	// 2 => 1E
		9'b0_0010_0110,	// 3 => 26
		9'b0_0010_0101,	// 4 => 25
		9'b0_0010_1110,	// 5 => 2E
		9'b0_0011_0110,	// 6 => 36
		9'b0_0011_1101,	// 7 => 3D
		9'b0_0011_1110,	// 8 => 3E
		9'b0_0100_0110,	// 9 => 46
		
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
	
	
	reg [7:0] money=0,next_money=0,item=0,next_item=0,price=0,next_price=0;
	wire [3:0] price_10,price_1,money_10,money_1,buy_money_10,buy_money_1;
	reg [3:0] buy_item;
	assign price_10=price/10;
	assign price_1=price%10;
	assign money_10=money/10;
	assign money_1=money%10;
	assign buy_money_10=((buy_item)*price)/10;
	assign  buy_money_1=((buy_item)*price)%10;
	wire clk_001;
	clock_divider_0_01 c001(.clk(clk), .clk_div(clk_001));

	reg [9:0] counter,next_counter, counter1,next_counter1;

	


	wire btnL_d,btnL_o,btnR_d,btnR_o,rst_d,rst_o;
	debounce d1(.clk(clk),.pb(btnL),.pb_debounced(btnL_d));
	debounce d2(.clk(clk),.pb(btnR),.pb_debounced(btnR_d));
	debounce d3(.clk(clk),.pb(rst),.pb_debounced(rst_d));


	one_pulse o1(.clk(clk),.pb_in(btnL_d),.pb_out(btnL_o));
	one_pulse o2(.clk(clk),.pb_in(btnR_d),.pb_out(btnR_o));
	one_pulse o3(.clk(clk),.pb_in(rst_d),.pb_out(rst_o));


	reg[3:0] state=0,next_state=0;
	parameter IDLE =0 ;
	parameter SET =1 ;
	parameter PAYMENT =2;
	parameter BUY =3 ;
	parameter CHANGE =4 ;
	parameter change_price=0;
	parameter change_item =1 ;
	reg change_set,next_change_set;
	reg [15:0] nums;
	reg [15:0] segment_nums;
	reg [3:0] key_num;
	reg [9:0] last_key;



	
	parameter dash=4'd10;
	
	wire shift_down;
	wire [511:0] key_down;
	reg [511:0] pre_key_down;
	wire [8:0] last_change;
	wire [8:0] pre_last_change;
	
	wire been_ready;
	
	assign shift_down = (key_down[LEFT_SHIFT_CODES] == 1'b1 || key_down[RIGHT_SHIFT_CODES] == 1'b1) ? 1'b1 : 1'b0;
	
	SevenSegment seven_seg (
		.display(display),
		.digit(digit),
		.nums(segment_nums),
		.rst(rst_o),
		.clk(clk)
	);
		
	KeyboardDecoder key_de (
		.key_down(key_down),
		.last_change(last_change),
		.key_valid(been_ready),
		.PS2_DATA(PS2_DATA),
		.PS2_CLK(PS2_CLK),
		.rst(rst_o),
		.clk(clk)
	);
	always @(posedge clk,posedge rst_o) begin
		if(rst_o)
			pre_key_down<=0;
		else
		    pre_key_down<=key_down;
		
	end
	//led
	
	always @(*) begin

		case (state)
			IDLE:LED=0;
			SET:begin
				if(change_set==change_item)
					LED=16'b1111111100000000;
				else
					LED=16'b0000000011111111;
			end
			PAYMENT:LED=0;
			BUY:begin
				if(counter>=50&&counter<100)
					LED=0;
				else if(counter>=150&&counter<200)
					LED=0;
				else if(counter>=250&&counter<300)
					LED=0;
				else
					LED=16'b1111111111111111;
			end
			CHANGE:LED=16'b1111111111111111;
			default:LED=0;
		endcase
		
	end

	//state
	always @(posedge clk, posedge rst_o) begin
		if(rst_o) begin
			state<=IDLE;
			change_set<=change_item;
		end
		else begin
			state<=next_state;
			change_set<=next_change_set;
		end
		
	end
	always @(*) begin
		case (state)
			IDLE:begin
				if(btnL_o)
					next_state=SET;
				else if(btnR_o)
					next_state=PAYMENT;
				else
					next_state=IDLE;


					next_change_set=change_item;
			end
			SET:begin
				if(been_ready &&last_change==enter&&key_down[last_change]==1)
					next_state=IDLE;
				else begin
					next_state=SET;

					if(been_ready &&last_change==space&&key_down[last_change]==1)
						next_change_set=~change_set;
					else
						next_change_set=change_set;
				end
					

					
			end
			PAYMENT:begin
				if(been_ready &&last_change==enter&&key_down[last_change]==1)begin
					if(money>=price&&item!=0)
						next_state=BUY;
					else
						next_state=CHANGE;

				end
				else 
					next_state=PAYMENT;
			end
			BUY:begin
				if(counter==299)
					next_state=CHANGE;
				else
					next_state=BUY;
			end
			CHANGE:begin
				if(counter1==299)
					next_state=IDLE;
				else
					next_state=CHANGE;
			end
			default: next_state=state;
		endcase
		
	end
	

	always @ (posedge clk, posedge rst_o) begin
		if (rst_o) begin
			nums <= 16'b0;
		end else begin
			nums <= nums;
			case (state)
				IDLE:begin
					if(btnL_o)
						nums<={item[3:0],4'd0,price_10,price_1};
					else
						nums<=0;
				end
				SET:begin
					if (been_ready && key_down[last_change] == 1'b1&&key_down==2**last_change&&pre_key_down!=key_down) begin
						if (key_num != 4'b1111)begin
							if (change_set==change_item) 
								nums <= {key_num, nums[11:0]};
							else 
							nums <= {nums[15:8], nums[3:0],key_num};
						end
					end
				end
				PAYMENT:begin
					if (been_ready && key_down[last_change] == 1'b1&&key_down==2**last_change&&pre_key_down!=key_down) begin
						if (key_num != 4'b1111)begin
							
							nums <= {nums[11:0],key_num};

						end
						
						
					end
					

				end
				
				default: nums<=0;
			endcase
			
			
		end
	end
	
	always @ (*) begin
		case (last_change)
			KEY_CODES[00] : key_num = 4'b0000;
			KEY_CODES[01] : key_num = 4'b0001;
			KEY_CODES[02] : key_num = 4'b0010;
			KEY_CODES[03] : key_num = 4'b0011;
			KEY_CODES[04] : key_num = 4'b0100;
			KEY_CODES[05] : key_num = 4'b0101;
			KEY_CODES[06] : key_num = 4'b0110;
			KEY_CODES[07] : key_num = 4'b0111;
			KEY_CODES[08] : key_num = 4'b1000;
			KEY_CODES[09] : key_num = 4'b1001;
			KEY_CODES[10] : key_num = 4'b0000;
			KEY_CODES[11] : key_num = 4'b0001;
			KEY_CODES[12] : key_num = 4'b0010;
			KEY_CODES[13] : key_num = 4'b0011;
			KEY_CODES[14] : key_num = 4'b0100;
			KEY_CODES[15] : key_num = 4'b0101;
			KEY_CODES[16] : key_num = 4'b0110;
			KEY_CODES[17] : key_num = 4'b0111;
			KEY_CODES[18] : key_num = 4'b1000;
			KEY_CODES[19] : key_num = 4'b1001;
			default		  : key_num = 4'b1111;
		endcase
	end
// nums

wire [3:0]counter_1,counter_10;
assign counter_10=counter/10;
assign counter_1=counter%10;
always @(*) begin
	case (state)
		IDLE:segment_nums={dash,dash,dash,dash};
		SET: segment_nums={item[3:0],dash,price_10,price_1};
		PAYMENT:segment_nums={dash,dash,money_10[3:0],money_1[3:0]};
		BUY:begin
			if(counter>=50&&counter<100)
				segment_nums={4'd11,4'd11,4'd11,4'd11};
			else if(counter>=150&&counter<200)
				segment_nums={4'd11,4'd11,4'd11,4'd11};
			else if(counter>=250&&counter<300)
				segment_nums={4'd11,4'd11,4'd11,4'd11};
			else
				segment_nums={buy_item[3:0],dash,buy_money_10[3:0],buy_money_1[3:0]};
		end
		
		CHANGE:segment_nums={buy_item[3:0],dash,money_10[3:0],money_1[3:0]};


		default: segment_nums={dash,dash,dash,dash};
	endcase
	
end
//item money price


always @(posedge clk ,posedge rst_o) begin
	if(rst_o)begin
		item<=9;
		price<=10;
		money<=0;
	end

	else begin
		item<=next_item;
		price<=next_price;
		money<=next_money;
	end

end
always @(*) begin
	
	case (state)
		IDLE:begin
			next_item=item;
			
			buy_item=0;

			next_price=price;

			next_money=0;
		end
		
		SET:begin
			if(change_set==change_item)
				next_item=nums[15:12];
			else
				next_item=item;

			if(change_set==change_price)
				next_price=10*nums[7:4]+nums[3:0];
			else
				next_price=price;

			next_money=0;
			

		end
		PAYMENT:begin
			if(been_ready &&last_change==enter&&money>price&&item!=0)begin
				buy_item=money/price;
				next_item=item-buy_item;
			end
			else
				next_item=item;

			next_price=price;

			if(been_ready &&last_change==enter&&money>price&&item!=0)begin
				
				next_money=money-(buy_item*price);
				
			end
			else if(been_ready &&key_num==0&&key_down[last_change]==1&&key_down==2**last_change&&pre_key_down!=key_down)
				next_money=0;
			else if(been_ready &&key_num==1&&key_down[last_change]==1&&key_down==2**last_change&&pre_key_down!=key_down)begin
				if(money+1>99)
					next_money=99;
				else
					next_money=money+1;
			end
				
			else if(been_ready &&key_num==2&&key_down[last_change]==1&&key_down==2**last_change&&pre_key_down!=key_down)begin
				
				if(money+5>99)
					next_money=99;
				else
					next_money=money+5;
			end
				
			else if(been_ready &&key_num==3&&key_down[last_change]==1&&key_down==2**last_change&&pre_key_down!=key_down)begin
				if(money+10>99)
					next_money=99;
				else
					next_money=money+10;
			end
			else if(been_ready &&key_num==4&&key_down[last_change]==1&&key_down==2**last_change&&pre_key_down!=key_down)begin
				if(money+50>99)
					next_money=99;
				else
					next_money=money+50;
			end	
				else
					next_money=money;
		end
		default:begin
			next_item=item;

			next_price=price;

			next_money=money;
		end
	endcase
	
end


/*counter*/
always @(posedge clk_001 or posedge rst_o) begin
    if(rst_o)begin
        counter<=0;
		counter1<=0;
        
     end
    else  begin
        counter<=next_counter;
		counter1<=next_counter1;
        
    end
    
end
always @(*) begin
   
        case (state)
			BUY:begin
				if(counter==299)
					next_counter=299;
				else
					next_counter=counter+1;

				next_counter1=0;
			end
			CHANGE:begin
				if(counter1==299)
					next_counter1=299;
				else
					next_counter1=counter1+1;

				next_counter=0;

				
			end
			default:begin
				next_counter=0;
				next_counter1=0;
			end 
		
        
    endcase
    
end
	
endmodule




module clock_divider_0_01 (
    input wire  clk,
    output reg clk_div  
);
    parameter LIMIT = 19'd499999; // 500_000 - 1
    reg [18:0] cnt;
    reg [18:0] next_cnt;
    reg next_clk_div;

    always @(posedge clk) begin
        cnt <= next_cnt;
        clk_div <= next_clk_div;
    end

    always @(*) begin
        if (cnt == LIMIT) begin
            next_cnt = 19'd0;
            next_clk_div = ~clk_div;
        end
        else begin
            next_cnt = cnt + 1'b1;
            next_clk_div = clk_div;
        end
    end
endmodule
