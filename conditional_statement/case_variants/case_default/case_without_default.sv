// case statement allows us to execute the code for the particular case expression


//Syntax:
//       case(condition)
//       condition_1: Statements ;
//       condition_2: Statements ;
//       ...........
//       conditon_N: Statements;
//       endcase


module top;
bit [1:0] x;

initial begin
  x = 2'b01;

  //Here expression= "x" should match one of the items
  //Execution will exit the case block without doing nothing if none of the case items match the given expression
  //and also default statement is not given. 
    case(x)
      00 : $display("Value of x = %0b", x);
      01 : $display("Value of x = %0b",x);
      10 : $display("Value of x = %0b",x);
      11 : $display("Value of x = %0b" ,x);
    endcase
  end
  endmodule


