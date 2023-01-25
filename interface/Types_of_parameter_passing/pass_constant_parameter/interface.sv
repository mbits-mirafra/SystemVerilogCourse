//Parameters can be used in interfaces to make vector
//sizes and other declarations within the interface
//reconfigurable using Verilog’s parameter redefinition construct.

//Parameter interface
interface count_if #(parameter N);
  //--------------------------------------------------------------------------------------------
  // declaration of Design signals
  // grouping of Design signal togather
  //--------------------------------------------------------------------------------------------
  logic rst,clk;
  logic [N:0] counter;
  logic [N:0] counter_up; 
endinterface:count_if
  
