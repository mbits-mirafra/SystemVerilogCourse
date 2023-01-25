
// This is similar to case but reports warning when 
// multiple expressions match with item or no expression matches

//Syntax :
//         unique case(condition)
//         condition_1: Statements ;
//         condition_2: Statements ;
//         ............
//         conditon_N: Statements;
//         endcase

//In this unique case, more than one statement is true
//this will gives the warning in output






module top;
bit [1:0] x;

initial begin
  x = 2'b00;

  unique case(x)

  00 : $display("Value of x is =%0b" , x);
  00 : $display("Value of x is =%0b" , x);
  01 : $display("Value of x is =%0b" , x);
  10  : $display("Value of x is =%0b" , x);
  11  :$display("Value of x is =%0b" , x);
endcase
end
endmodule
