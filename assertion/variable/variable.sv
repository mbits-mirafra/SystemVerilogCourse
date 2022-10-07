//This module includes variable delay inside the sequence
module variable;
bit clk,a,b;
int parameter_delay;
always #5 clk = ~clk;

//input conditions
initial begin
  parameter_delay = 2;
  a=1; b = 0;
  #20 a=0; b = 1;
  #10 a=1;
  #15 a=0; b = 1;
  #10 a=1; b = 0;
  #15;
  $finish;
end 

// //copy the parameter delay value to variable delay and works like while loop 
// and check the delay upto zero
sequence delay_sequence(variable_delay);
  int delay;
  (1,delay=variable_delay) ##0 first_match((1,delay=delay-1) [*0:$] ##0 delay <=0);
endsequence

//checking the condition
a_1: assert property(@(posedge clk) a |-> delay_sequence(parameter_delay) |-> b)
$info("assertion passed"); else $error("assertion failed");

endmodule  
