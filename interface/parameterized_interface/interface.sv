//declare interface using parameter
interface count_if #(parameter N=2);  
  //declare signals using logic datatype
  logic reset,clk;  
  logic [N:0] counter;
endinterface: count_if
