// This is similar to case but reports warning when
//multiple expressions match with item or no expression matches
//
//Syntax : unique case(condition)
//         condition_1: Statements ;
//         condition_2: Statements ;
//          ............
//          conditon_N: Statements;
//          default   : Statements;
//          endcase

//Here we use default statement inside the case statement.
//If none of the case condition is true, then default statement is executed.






module top;
bit [1:0] x;
initial begin
  x = 2'b01;

//Here no condition is true, default statement will get executed.
  unique case(x)
  00 : $display(" Value of x is = %0b", x);
  // 01 : $display(" Value of x is = %0b", x);
  10 : $display(" Value of x is = %0b", x);
  11 : $display(" Value of x is = %0b", x);
  default : $display(" Value of x is = %0b", x);

endcase
end
endmodule

