module Lab5(
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

	parameter [2:0] IDLE = 3'd0;
	parameter [2:0] SET = 3'd1;
	parameter [2:0] PAYMENT = 3'd2;
	parameter [2:0] BUY = 3'd3;
	parameter [2:0] CHANGE = 3'd4;

	parameter [3:0] D_DASH = 4'd10;
	parameter [3:0] D_BLANK = 4'd11;

	parameter [3:0] NAN = 4'b1111; // not a number

	parameter [8:0] SPACE_CODE = 9'b0_0010_1001;
	parameter [8:0] ENTER_CODE = 9'b0_0101_1010 ;

	wire rst_db, btnL_db, btnR_db;
	wire rst_p, btnL_p, btnR_p;
	debounce db1(.clk(clk),.pb(btnL),.pb_debounced(btnL_db));
	debounce db2(.clk(clk),.pb(btnR),.pb_debounced(btnR_db));
	debounce db3(.clk(clk),.pb(rst),.pb_debounced(rst_db));

	one_pulse op1(.clk(clk),.pb_in(btnL_db),.pb_out(btnL_p));
	one_pulse op2(.clk(clk),.pb_in(btnR_db),.pb_out(btnR_p));
	one_pulse op3(.clk(clk),.pb_in(rst_db),.pb_out(rst_p));

	reg [15:0] nums;
	reg [2:0] state, next_state;
	reg [3:0] items, next_items;
	reg [3:0] amount_purchased;

	reg [3:0] price [1:0]; // 99
	reg [3:0] next_price [1:0]; 

	reg [6:0] money, next_money;

	reg [28:0] counter, next_counter; // 29-bit
	reg [2:0] round; // led round

	reg space_state, next_space_state; // for SET state: 0 -> items, 1 -> price
	reg [3:0] key_num;

	wire [6:0] price_val;
	assign price_val = 10 * price[1] + price[0];
	
	wire [511:0] key_down;
	wire [8:0] last_change;
	wire been_ready;

	wire single_key_down = (key_down == (512'b1 << last_change)) ? 1'b1 : 1'b0;
	wire enter_down = (single_key_down && key_down[ENTER_CODE] == 1'b1) ? 1'b1 : 1'b0;
	wire space_down = (single_key_down && key_down[SPACE_CODE] == 1'b1) ? 1'b1 : 1'b0;

	SevenSegment seven_seg (
		.display(display),
		.digit(digit),
		.nums(nums),
		.rst(rst_p),
		.clk(clk)
	);
		
	KeyboardDecoder key_de (
		.key_down(key_down),
		.last_change(last_change),
		.key_valid(been_ready), 
		.PS2_DATA(PS2_DATA),
		.PS2_CLK(PS2_CLK),
		.rst(rst_p),
		.clk(clk)
	);

	// ! Question A !
	reg [511:0] last_key_down; 
	wire not_same_key = (key_down != last_key_down) ? 1'b1 : 1'b0; 

	always @(posedge clk, posedge rst_p) begin
		if (rst_p) begin
			last_key_down <= 0;
		end
		else begin
			last_key_down <= key_down;
		end
	end

	// DFF: counter
	always @(posedge clk, posedge rst_p) begin
		if (rst_p) begin
			counter <= 0;
		end
		else begin
			counter <= next_counter;
		end
	end

	// DFF: space_state
	always @(posedge clk, posedge rst_p) begin
		if (rst_p) begin
			space_state <= 0;
		end
		else begin
			space_state <= next_space_state;
		end
	end

	// Comb: space_state
	always @(*) begin
		if (state == SET) begin
				next_space_state = space_state;
				if (been_ready && not_same_key && space_down) next_space_state = ~space_state;
		end
		else next_space_state = 0;
	end

	// DFF: state, items, price, money
	always @(posedge clk, posedge rst_p) begin
		if (rst_p) begin
			state <= IDLE;
			items <= 9;
			price[1] <= 1;
			price[0] <= 0;
			money <= 0;
		end
		else begin
			state <= next_state;
			items <= next_items;
			price[1] <= next_price[1];
			price[0] <= next_price[0];
			money <= next_money;
		end
	end

	// Comb: amount_purchased
	always @(*) begin
		if (items == 0) amount_purchased = 0;
		else if (price_val == 0) amount_purchased = items;
		else amount_purchased = (items < (money / price_val)) ? items : (money / price_val);
	end

	// Comb: LED, nums
	always @(*) begin
		nums = 16'd0;
		LED = 16'd0;
		round = counter / 29'd50_000_000;

		case (state)
			IDLE: begin
				nums = {D_DASH, D_DASH, D_DASH, D_DASH};
				LED = 16'd0;
			end
			SET: begin
				nums = {items, D_DASH, price[1], price[0]};
				if (space_state == 1'b0) LED = 16'b1111_1111_0000_0000;
				else LED = 16'b0000_0000_1111_1111;
			end
			PAYMENT: begin
				LED = 16'd0;
				nums[15:8] = {D_DASH, D_DASH};
				nums[7:4] = money / 10;
				nums[3:0] = money % 10;
			end
			BUY: begin
				if (round == 0 || round == 2 || round == 4) begin
					LED = 16'b1111_1111_1111_1111;
					nums[15:12] = amount_purchased;
					nums[11:8] = D_DASH;
					nums[7:4] = (price_val * amount_purchased) / 10;
					nums[3:0] = (price_val * amount_purchased) % 10;
				end
				else begin
					LED = 16'd0;
					nums = {D_BLANK, D_BLANK, D_BLANK, D_BLANK};
				end
			end
			CHANGE: begin
				LED = 16'b1111_1111_1111_1111;
				nums[15:12] = amount_purchased;
				nums[11:8] = D_DASH;
				nums[7:4] = (money - price_val * amount_purchased) / 10;
				nums[3:0] = (money - price_val * amount_purchased) % 10;
			end
		endcase
	end

	// next_state logic: state, items, price, money, counter
	always @(*) begin
		next_state = state;
		next_items = items;
		next_price[1] = price[1];
		next_price[0] = price[0];
		next_money = money;
		next_counter = counter;

		case (state)
			IDLE: begin
				// state
				if (btnL_p == 1'b1) next_state = SET;
				else if (btnR_p == 1'b1) next_state = PAYMENT;

				// money
				next_money = 0; // need to reset money paid
			end
			SET: begin
				// state
				if (been_ready && not_same_key && enter_down) next_state = IDLE;

				// items
				if (space_state == 1'b0) begin
					if (been_ready && not_same_key && key_down[last_change]) begin
						if (key_num != NAN) next_items = key_num;
					end
				end

				// price
				if (space_state == 1'b1) begin
					if (been_ready && not_same_key && key_down[last_change]) begin
						if (key_num != NAN) begin
							next_price[1] = price[0];
							next_price[0] = key_num;
						end
					end
				end
			end
			PAYMENT: begin
				// state
				if (been_ready && not_same_key && enter_down) begin
					if (items > 0 && money >= price_val) next_state = BUY;
					else next_state = CHANGE;
				end

				// money
				if (been_ready && not_same_key && key_down[last_change]) begin
					case (key_num)
						4'd0: next_money = 7'd0;
						4'd1: next_money = (money < 7'd99) ? money + 1 : 7'd99;
						4'd2: next_money = (money < 7'd95) ? money + 5 : 7'd99;
						4'd3: next_money = (money < 7'd90) ? money + 10 : 7'd99;
						4'd4: next_money = (money < 7'd50) ? money + 50 : 7'd99;
					endcase
				end

				// counter
				next_counter = 0;
			end
			BUY: begin
				// state
				if (counter == 29'd299_999_999) next_state = CHANGE;

				// counter
				if (counter == 29'd299_999_999) next_counter = 0;
				else next_counter = counter + 1'b1;
			end
			CHANGE: begin
				// state
				if (counter == 29'd299_999_999) next_state = IDLE;

				// items
				if (counter == 29'd299_999_999) next_items = items - amount_purchased;

				// counter
				if (counter == 29'd299_999_999) next_counter = 0;
				else next_counter = counter + 1'b1;
			end
		endcase
	end
	
	// Comb: key_num
	always @ (*) begin
		case (last_change)
			KEY_CODES[00] : key_num = 4'b0000; // 0
			KEY_CODES[01] : key_num = 4'b0001;
			KEY_CODES[02] : key_num = 4'b0010;
			KEY_CODES[03] : key_num = 4'b0011;
			KEY_CODES[04] : key_num = 4'b0100;
			KEY_CODES[05] : key_num = 4'b0101;
			KEY_CODES[06] : key_num = 4'b0110;
			KEY_CODES[07] : key_num = 4'b0111;
			KEY_CODES[08] : key_num = 4'b1000;
			KEY_CODES[09] : key_num = 4'b1001; // 9
			KEY_CODES[10] : key_num = 4'b0000; // 0
			KEY_CODES[11] : key_num = 4'b0001;
			KEY_CODES[12] : key_num = 4'b0010;
			KEY_CODES[13] : key_num = 4'b0011;
			KEY_CODES[14] : key_num = 4'b0100;
			KEY_CODES[15] : key_num = 4'b0101;
			KEY_CODES[16] : key_num = 4'b0110;
			KEY_CODES[17] : key_num = 4'b0111;
			KEY_CODES[18] : key_num = 4'b1000;
			KEY_CODES[19] : key_num = 4'b1001; // 9
			default		  : key_num = NAN; // not a number
		endcase
	end

endmodule
