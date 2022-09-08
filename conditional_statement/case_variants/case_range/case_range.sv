//Syntax:
//      case(condition) inside
//      condition_1: Statements ;
//      condition_2: Statements ;
//      ...........
//      conditon_N: Statements;
//      endcase




module top;
int x;

initial begin
  x = 6;


  //Here expression= "x" should be used with inside statement
  //Here we are specifying the range
  //  If none of the case items match the given expression, statement within the default item is executed
     case(x) inside
    [2:3] : $display("Value of x = %0d", x);
    [4:5] :$display("Value of x = %0d",x);
    [6:9] : $display("Value of x = %0d",x);
    [8:9]  : $display("Value of x = %0d" ,x);
    default : $display("Value of x is not find");
  endcase

end

endmodule
