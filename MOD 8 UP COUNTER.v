MOD 8 UP COUNTER
Source Code:
module mod8_up_counter(q,d,clk,rst);
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
endmodule

Test Bench:
module mod5_up_counter_tb;
   wire [2:0]q;
  reg [2:0]d;
  reg clk,rst;
  mod8_up_counter uut(q,d,clk,rst);
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
