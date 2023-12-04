module lab4_2 ( 
    input wire clk,
    input wire rst,
    input wire Digit_1,
    input wire Digit_2,
    input wire Digit_3,
    input wire stop,
    input wire start,
    input wire increase,
    input wire decrease,
    input wire direction,
    output reg [3:0] DIGIT,
    output reg [6:0] DISPLAY,
    output reg [15:0] led
); 
    /* Note that output ports can be either reg or wire. 
    * It depends on how you design your module. */
    // add your design here




    /* Note that output ports can be either reg or wire. 
    * It depends on how you design your module. */
    // add your design here

wire clk_div;
wire clk_001;

wire de_stop;
wire de_start;
wire de_direction;
wire de_increase;
wire de_decrease;

wire one_pulse_stop;
wire one_pulse_start;
wire one_pulse_direction;
wire one_pulse_increase;
wire one_pulse_decrease;

reg [1:0]state,next_state;
reg [9:0]counter,next_counter;
reg [9:0]counter1,next_counter1;
reg [3:0]next_DIGIT;
reg [3:0]value,next_value;

reg[9:0] bcd_100;
reg[9:0] bcd_10;
reg[9:0] bcd_1;

reg[9:0] next_bcd_100;
reg[9:0] next_bcd_10;
reg[9:0] next_bcd_1;

reg [9:0] initial_bcd=0,next_initial_bcd;


reg[9:0] low_bound,up_bound;





clock_divider_0_01 c001(.clk(clk), .clk_div(clk_001));
clock_divider #(14) div1(.clk(clk), .clk_div(clk_div));

debounce d1(.clk(clk_div),.pb(stop),.pb_debounced(de_stop));
debounce d2(.clk(clk_div),.pb(start),.pb_debounced(de_start));
debounce d3(.clk(clk_div),.pb(direction),.pb_debounced(de_direction));
debounce d4(.clk(clk_div),.pb(increase),.pb_debounced(de_increase));
debounce d5(.clk(clk_div),.pb(decrease),.pb_debounced(de_decrease));

one_pulse op1(.clk(clk_div), .pb_in(de_stop), .pb_out(one_pulse_stop));
one_pulse op2(.clk(clk_div), .pb_in(de_start), .pb_out(one_pulse_start));
one_pulse op3(.clk(clk_div), .pb_in(de_direction), .pb_out(one_pulse_direction));
one_pulse op4(.clk(clk_div), .pb_in(de_increase), .pb_out(one_pulse_increase));
one_pulse op5(.clk(clk_div), .pb_in(de_decrease), .pb_out(one_pulse_decrease));
/*state*/
parameter INITIAL=2'd0;
parameter COUNTING=2'd1;
parameter SUCCESS=2'd2;
parameter FAIL=2'd3;

/*dir*/
reg dir,next_dir;
parameter up=1;
parameter down=0;


/*bcd*/
reg [9:0]bcd,next_bcd;



/*display*/
parameter dis_dash=4'd10;
parameter dis_up=4'd11;
parameter dis_down=4'd12;
parameter dis_off=4'd13;
parameter dis_f=4'd14;
parameter dis_s=4'd15;
/*led*/
always @(*) begin
    case (state)
    INITIAL:led=16'b1111_1111_1111_1111;
    COUNTING:begin
        if(counter!=300)
            led=16'b1111_1111_1111_1111;
        else
            led=0;

    end
    SUCCESS:begin
        if(counter1>=100&&counter1<200)
            led=0;
        else if(counter1>=300&&counter1<400)
            led=0;
        else
            led=16'b1111_1111_1111_1111;

    end
    FAIL:begin
        if(counter1>=100&&counter1<200)
            led=0;
        else if(counter1>=300&&counter1<400)
            led=0;
        else if(counter1>500)
            led=0;
        else
            led=16'b1111_1111_1111_1111;

    end
        default: led=0;
    endcase
    
end

/*digit*/

always @(posedge clk_div) begin
    
        DIGIT<=next_DIGIT;
end
always @(*) begin
    case (DIGIT)
        4'b1110:next_DIGIT=4'b1101;
        4'b1101:next_DIGIT=4'b1011;
        4'b1011:next_DIGIT=4'b0111;
        4'b0111:next_DIGIT=4'b1110;
        default: next_DIGIT=4'b1110;
    endcase
    
end

/*value*/

always @(posedge clk_div  ) begin
    
        value<=next_value;
end
always @(*) begin
    case (state)
    INITIAL:begin
        case (DIGIT)
        4'b1110:next_value=(initial_bcd/10)%10;
        4'b1101:next_value=(initial_bcd/100)%10;
        4'b1011:next_value=(dir==up)?dis_up:dis_down;
        4'b0111:next_value=initial_bcd%10;
        default: next_value=dis_dash;
        endcase
    end 
    COUNTING:begin
        if(counter!=300)begin
            case (DIGIT)
                4'b1110:next_value=(bcd/10)%10;
                4'b1101:next_value=(bcd/100)%10;
                4'b1011:next_value=(dir==up)?dis_up:dis_down;
                4'b0111:next_value=bcd%10;
                default: next_value=dis_dash;
            endcase
        end
            else begin 
            case (DIGIT)
                4'b1011:next_value=(dir==up)?dis_up:dis_down;
                default: next_value=dis_dash;
            endcase
            

        end
    
    end
    SUCCESS:begin
        case (DIGIT)
        4'b1110:next_value=(bcd/10)%10;
        4'b1101:next_value=(bcd/100)%10;
        4'b1011:next_value=dis_s;
        4'b0111:next_value=bcd%10;
        default: next_value=2;
        endcase
        
    end
    FAIL:begin
        case (DIGIT)
        4'b1110:next_value=(bcd/10)%10;
        4'b1101:next_value=(bcd/100)%10;
        4'b1011:next_value=dis_f;
        4'b0111:next_value=bcd%10;
        default: next_value=3;
        endcase
        
    end
        default: next_value=4;
    endcase
    
end



/*display*/
always @(*) begin
    case (value)
        4'd0: DISPLAY = 7'b100_0000;
        4'd1: DISPLAY = 7'b111_1001;
        4'd2: DISPLAY = 7'b010_0100;
        4'd3: DISPLAY = 7'b011_0000;
        4'd4: DISPLAY = 7'b001_1001;
        4'd5: DISPLAY = 7'b001_0010;
        4'd6: DISPLAY = 7'b000_0010;
        4'd7: DISPLAY = 7'b111_1000;
        4'd8: DISPLAY = 7'b000_0000;
        4'd9: DISPLAY = 7'b001_0000;
        dis_dash:DISPLAY = 7'b011_1111;
        dis_up:DISPLAY = 7'b101_1100;
        dis_down:DISPLAY =7'b110_0011;
        dis_f:DISPLAY = 7'b000_1110;
        dis_off:DISPLAY=7'b111_1111;
        dis_s:DISPLAY = 7'b001_0010;

        default: DISPLAY = 7'b111_1111;
    endcase
    
end

/*counter*/
always @(posedge clk_001 or posedge rst) begin
    if(rst)begin
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
        INITIAL:begin
            next_counter=0;
            next_counter1=0;
        end
        COUNTING:begin
            
            if(counter==300)
                next_counter=300;
            else
                next_counter=counter+1;
            
            next_counter1=0;
            
        end
        SUCCESS:begin
            next_counter=0;
            if(counter1==499)
                next_counter1=499;
            else
                next_counter1=counter1+1;
        end
        FAIL:begin
            next_counter=0;
            if(counter1==600)
                next_counter1=600;
            else
                next_counter1=counter1+1;
        end
        default:next_counter=counter;
        
    endcase
    
end

/*state*/
always @(posedge clk_div or posedge rst) begin
    if(rst)
        state<=INITIAL;
    else
        state<=next_state;
end

always @(*) begin
    case (state)
    INITIAL :begin
        if(one_pulse_start==1)
            next_state=COUNTING;
        else
            next_state=state;
    end 
    COUNTING :begin
        low_bound=(initial_bcd>=100)?initial_bcd-100:0;
        up_bound =(initial_bcd<=899)?initial_bcd+100:999;
       
        if(one_pulse_stop==1)begin
            if(bcd<=up_bound&&bcd>=low_bound)
                next_state=SUCCESS;
            else
                next_state=FAIL;
        end
        else if((bcd==0&&dir==down)||(bcd==999&&dir==up))
            next_state=FAIL;
        else
            next_state=state;
    end
    FAIL :begin
        if(one_pulse_start==1)
            next_state=INITIAL;
        else
            next_state=state;
    end
    SUCCESS :begin
        if(one_pulse_start==1)
            next_state=INITIAL;
        else
            next_state=state;
    end
    endcase
end
/*initial bcd*/
always @(posedge clk_div or posedge rst) begin
    if(rst)
        initial_bcd<=0;
    else 
        initial_bcd<=next_initial_bcd;
    
end

always @(*) begin
    if(rst)begin
        next_bcd_1=0;
        next_bcd_10=0;
        next_bcd_100=0;
        
    end
    bcd_100=(initial_bcd/100)%10;
    bcd_10=(initial_bcd/10)%10;
    bcd_1=initial_bcd%10;
    next_bcd_1 = bcd_1;
    next_bcd_10 = bcd_10;
    next_bcd_100 = bcd_100;
    if(state==INITIAL)begin
        if(one_pulse_increase==1)begin
            if(Digit_1==1)
                next_bcd_1=(bcd_1==9)?0:bcd_1+1;
            if(Digit_2==1)
                next_bcd_10=(bcd_10==9)?0:bcd_10+1;
            if(Digit_3==1)
                next_bcd_100=(bcd_100==9)?0:bcd_100+1;
            next_initial_bcd=next_bcd_1+10*next_bcd_10+100*next_bcd_100;
        end
        else if(one_pulse_decrease==1)begin
            if(Digit_1==1)
                next_bcd_1=(bcd_1==0)?9:bcd_1-1;
            if(Digit_2==1)
                next_bcd_10=(bcd_10==0)?9:bcd_10-1;
            if(Digit_3==1)
                next_bcd_100=(bcd_100==0)?9:bcd_100-1;
           next_initial_bcd=next_bcd_1+10*next_bcd_10+100*next_bcd_100;
        end
        else
            next_initial_bcd=initial_bcd;
    end
    else
        next_initial_bcd=initial_bcd;
    
end

/*bcd*/
always @(posedge clk_001 or posedge rst) begin
    if(rst)
        bcd<=0;
    else 
        bcd<=next_bcd;
    
end
always @(*) begin
    case (state)
    INITIAL :begin
        if(dir==up)
            next_bcd=000;
        else if(dir==down)
            next_bcd=999;
        else
            next_bcd=bcd;
    end 
    COUNTING :begin
        if(one_pulse_stop==1)
            next_bcd=bcd;
        else if(dir==up&&bcd==999)
            next_bcd=999;
        else if(dir==down&&bcd==0)
            next_bcd=0;
        else
            next_bcd=(dir==1)?bcd+1:bcd-1;
    end
    FAIL :begin
        next_bcd=bcd;
    end
    SUCCESS :begin
        next_bcd=bcd;
    end
    default:next_bcd=bcd;
    endcase
end

/*dir*/
always @(posedge clk_div or posedge rst) begin
    if(rst)
        dir<=up;
    else
        dir<=next_dir;
end

always @(*) begin
    if(state==INITIAL)begin
        if(one_pulse_direction==1)
            next_dir=~dir;
        else 
            next_dir=dir;
    end
    else    
        next_dir=dir;
    
end
endmodule 

module clock_divider_0_01 (
    input wire  clk,
    output reg clk_div  
);
    parameter LIMIT = 19'd499_999; // 500_000 - 1
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


