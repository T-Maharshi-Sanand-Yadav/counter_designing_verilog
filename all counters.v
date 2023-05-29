MOD 8 DOWN COUNTER
Source Code:
module mod8_down_counter(q,d,clk,rst);
  output reg[2:0]q=3'b111;
  input [2:0]d;
  input clk,rst;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b111;
  else
    q<=q-1;
  end
endmodule

Test Bench:
module mod5_down_counter_tb;
   wire [2:0]q;
  reg [2:0]d;
  reg clk,rst;
  mod8_down_counter uut(q,d,clk,rst);
  initial
    begin $monitor($time,"q=%b,d=%b,clk=%b,rst=%b",q,d,clk,rst);
      clk=0;
      d=0;
      rst=0;
      //#15 rst=1;
      //#15 rst=0;
      #50 $finish;
    end
  
  always #1 clk = ~clk;
  
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
endmodule
______________________________________________________________
MOD 8 UP COUNTER
Source Code:
module mod8_up_counter(q,d,clk,rst);
  output reg[2:0]q=3'b000;
  input [2:0]d;
  input clk,rst;
  wire w1,w2;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b111;
  else
    q<=q-1;
  end
  //nand x1(rst,q[2],q[1],q[0]);
endmodule

Test Bench:
module mod5_down_counter_tb;
   wire [2:0]q;
  reg [2:0]d;
  reg clk,rst;
  mod8_down_counter uut(q,d,clk,rst);
  initial
    begin $monitor($time,"q=%b,d=%b,clk=%b,rst=%b",q,d,clk,rst);
      clk=0;
      d=0;
      rst=0;
      //#15 rst=1;
      //#15 rst=0;
      #50 $finish;
    end
  
  always #1 clk = ~clk;
  
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
endmodule
______________________________________________________________
//5 and 7 skip counter
module mod5_up_counter(q,d,clk,rst);
  output reg[2:0]q=3'b000;
  input [2:0]d;
  input clk,rst;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b000;
  else
    q<=q+1;
  end
 and x1(rst,q[2],q[0]);
endmodule

module mod5_up_counter_tb;
   wire [2:0]q;
  reg [2:0]d;
  reg clk,rst;
  mod5_up_counter uut(q,d,clk,rst);
  initial
    begin 
$monitor($time,"q=%b,d=%b,clk=%b,rst=%b",q,d,clk,rst);
      clk=0;
      d=0;
      rst=0;
      //#15 rst=1;
      //#15 rst=0;
      #50 $finish;
    end
  
  always #1 clk = ~clk;
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
endmodule


//1 and 3 skip counter
module mod5_up_counter(q,d,clk,rst);
  output reg[2:0]q=3'b000;
  input [2:0]d;
  input clk,rst;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b000;
  else
    q<=q+1;
  end
 or x1(rst,q[2],q[0]);
endmodule

module mod5_up_counter_tb;
   wire [2:0]q;
  reg [2:0]d;
  reg clk,rst;
  mod5_up_counter uut(q,d,clk,rst);
  initial
    begin 
$monitor($time,"q=%b,d=%b,clk=%b,rst=%b",q,d,clk,rst);
      clk=0;
      d=0;
      rst=0;
      //#15 rst=1;
      //#15 rst=0;
      #50 $finish;
    end
  
  always #1 clk = ~clk;
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
endmodule
//1,3,6 skip counter
module mod5_up_counter(q,d,clk,rst);
  output reg[2:0]q=3'b000;
  input [2:0]d;
  input clk,rst;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b000;
  else
    q<=q+1;
  end
 xor x1(rst,q[2],q[0]);
endmodule
module mod5_up_counter_tb;
   wire [2:0]q;
  reg [2:0]d;
  reg clk,rst;
  mod5_up_counter uut(q,d,clk,rst);
  initial
    begin 
$monitor($time,"q=%b,d=%b,clk=%b,rst=%b",q,d,clk,rst);
      clk=0;
      d=0;
      rst=0;
      //#15 rst=1;
      //#15 rst=0;
      #50 $finish;
    end
  
  always #1 clk = ~clk;
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
endmodule
//2,5,7 skip counter
module mod5_up_counter(q,d,clk,rst);
  output reg[2:0]q=3'b000;
  input [2:0]d;
  input clk,rst;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b000;
  else
    q<=q+1;
  end
 xnor x1(rst,q[2],q[0]);
endmodule
module mod5_up_counter_tb;
   wire [2:0]q;
  reg [2:0]d;
  reg clk,rst;
  mod5_up_counter uut(q,d,clk,rst);
  initial
    begin 
$monitor($time,"q=%b,d=%b,clk=%b,rst=%b",q,d,clk,rst);
      clk=0;
      d=0;
      rst=0;
      //#15 rst=1;
      //#15 rst=0;
      #50 $finish;
    end
  
  always #1 clk = ~clk;
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
endmodule

//6 skip counter
module mod5_up_counter(q,d,clk,rst);
  output reg[2:0]q=3'b000;
  input [2:0]d;
  input clk,rst;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b000;
  else
    q<=q+1;
  end
  and x1(rst,q[2],q[1]);
  //or x2(rst,q[2],q[1]);
  //nand x3(rst,q[2],q[1]);
  //nor x4(rst,q[2],q[1]);
  //xor x5(rst,q[2],q[1]);
  //xnor x6(rst,q[2],q[1]);
endmodule
//2 skip counter
module mod5_up_counter(q,d,clk,rst);
  output reg[2:0]q=3'b000;
  input [2:0]d;
  input clk,rst;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b000;
  else
    q<=q+1;
  end
  //and x1(rst,q[2],q[1]);
  or x2(rst,q[2],q[1]);
  //nand x3(rst,q[2],q[1]);
  //nor x4(rst,q[2],q[1]);
  //xor x5(rst,q[2],q[1]);
  //xnor x6(rst,q[2],q[1]);
endmodule
//2 skip counter
module mod5_up_counter(q,d,clk,rst);
  output reg[2:0]q=3'b000;
  input [2:0]d;
  input clk,rst;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b000;
  else
    q<=q+1;
  end
  //and x1(rst,q[2],q[1]);
  //or x2(rst,q[2],q[1]);
  //nand x3(rst,q[2],q[1]);
  //nor x4(rst,q[2],q[1]);
  xor x5(rst,q[2],q[1]);
  //xnor x6(rst,q[2],q[1]);
endmodule
//6 skip counter
module mod5_up_counter(q,d,clk,rst);
  output reg[2:0]q=3'b000;
  input [2:0]d;
  input clk,rst;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b000;
  else
    q<=q+1;
  end
  //and x1(rst,q[2],q[1]);
  //or x2(rst,q[2],q[1]);
  //nand x3(rst,q[2],q[1]);
  //nor x4(rst,q[2],q[1]);
  //xor x5(rst,q[2],q[1]);
  xnor x6(rst,q[2],q[1]);
endmodule
//3,7 skip counter
module mod5_up_counter(q,d,clk,rst);
  output reg[2:0]q=3'b000;
  input [2:0]d;
  input clk,rst;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b000;
  else
    q<=q+1;
  end
and  x1(rst,q[1],q[0]);
//or   x2(rst,q[1],q[0]);
//nand x3(rst,q[1],q[0]);
//nor  x4(rst,q[1],q[0]);
//xor  x5(rst,q[1],q[0]);
//xnor x6(rst,q[1],q[0]);
endmodule
//1,5 skip counter
module mod5_up_counter(q,d,clk,rst);
  output reg[2:0]q=3'b000;
  input [2:0]d;
  input clk,rst;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b000;
  else
    q<=q+1;
  end
//and  x1(rst,q[1],q[0]);
or   x2(rst,q[1],q[0]);
//nand x3(rst,q[1],q[0]);
//nor  x4(rst,q[1],q[0]);
//xor  x5(rst,q[1],q[0]);
//xnor x6(rst,q[1],q[0]);
endmodule
//1,5 skip counter
module mod5_up_counter(q,d,clk,rst);
  output reg[2:0]q=3'b000;
  input [2:0]d;
  input clk,rst;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b000;
  else
    q<=q+1;
  end
//and  x1(rst,q[1],q[0]);
//or   x2(rst,q[1],q[0]);
//nand x3(rst,q[1],q[0]);
//nor  x4(rst,q[1],q[0]);
xor  x5(rst,q[1],q[0]);
//xnor x6(rst,q[1],q[0]);
endmodule
//3,7 skip counter
module mod5_up_counter(q,d,clk,rst);
  output reg[2:0]q=3'b000;
  input [2:0]d;
  input clk,rst;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b000;
  else
    q<=q+1;
  end
//and  x1(rst,q[1],q[0]);
//or   x2(rst,q[1],q[0]);
//nand x3(rst,q[1],q[0]);
//nor  x4(rst,q[1],q[0]);
//xor  x5(rst,q[1],q[0]);
xnor x6(rst,q[1],q[0]);
endmodule
//5,7 skip counter
module mod5_up_counter(q,d,clk,rst);
  output reg[2:0]q=3'b000;
  input [2:0]d;
  input clk,rst;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b000;
  else
    q<=q+1;
  end
and  x1(rst,q[0],q[2]);
//or   x2(rst,q[0],q[2]);
//nand x3(rst,q[0],q[2]);
//nor  x4(rst,q[0],q[2]);
//xor  x5(rst,q[0],q[2]);
//xnor x6(rst,q[0],q[2]);
endmodule
//1,3 skip counter
module mod5_up_counter(q,d,clk,rst);
  output reg[2:0]q=3'b000;
  input [2:0]d;
  input clk,rst;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b000;
  else
    q<=q+1;
  end
//and  x1(rst,q[0],q[2]);
or   x2(rst,q[0],q[2]);
//nand x3(rst,q[0],q[2]);
//nor  x4(rst,q[0],q[2]);
//xor  x5(rst,q[0],q[2]);
//xnor x6(rst,q[0],q[2]);
endmodule
//1,3,6 skip counter
module mod5_up_counter(q,d,clk,rst);
  output reg[2:0]q=3'b000;
  input [2:0]d;
  input clk,rst;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b000;
  else
    q<=q+1;
  end
//and  x1(rst,q[0],q[2]);
//or   x2(rst,q[0],q[2]);
//nand x3(rst,q[0],q[2]);
//nor  x4(rst,q[0],q[2]);
xor  x5(rst,q[0],q[2]);
//xnor x6(rst,q[0],q[2]);
endmodule
//2,5,7 skip counter
module mod5_up_counter(q,d,clk,rst);
  output reg[2:0]q=3'b000;
  input [2:0]d;
  input clk,rst;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b000;
  else
    q<=q+1;
  end
//and  x1(rst,q[0],q[2]);
//or   x2(rst,q[0],q[2]);
//nand x3(rst,q[0],q[2]);
//nor  x4(rst,q[0],q[2]);
//xor  x5(rst,q[0],q[2]);
xnor x6(rst,q[0],q[2]);
endmodule

//6 skip counter
module mod5_up_counter(q,d,clk,rst);
  output reg[2:0]q=3'b111;
  input [2:0]d;
  input clk,rst;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b111;
  else
    q<=q+1;
  end
and 	x1(rst,q[2],q[1]);
//or 		x2(rst,q[2],q[1]);
//nand 	x3(rst,q[2],q[1]);
//nor 	x4(rst,q[2],q[1]);
//xor 	x5(rst,q[2],q[1]);
//xnor 	x6(rst,q[2],q[1]);
endmodule

//2 skip counter
module mod5_up_counter(q,d,clk,rst);
  output reg[2:0]q=3'b111;
  input [2:0]d;
  input clk,rst;
  always@(posedge clk or posedge rst)
  begin
    if(rst)
      q<=3'b111;
  else
    q<=q+1;
  end
//and 	x1(rst,q[2],q[1]);
or 		x2(rst,q[2],q[1]);
//nand 	x3(rst,q[2],q[1]);
//nor 	x4(rst,q[2],q[1]);
//xor 	x5(rst,q[2],q[1]);
//xnor 	x6(rst,q[2],q[1]);
endmodule
