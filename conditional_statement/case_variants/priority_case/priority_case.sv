//This is similar to case but checks the case expressions
//in a serial manner by giving priority.
//Even if multiple expressions match, only the first correct expression is evaluated.

//In this priority case, two conditions are true,
//but only the first matching condition is executed
//without giving any warning or error.

module top;
bit [2:0] pqr;

initial begin
  pqr = 5;                                  // Assigning value 5 to 'pqr'

  priority case (pqr)                       // Using priority case to evaluate conditions in order
    5 : $display ("Found to be 5");         // First matching condition gets executed
    5 : $display ("Again found to be 5");   // This will never execute
    7 : $display ("Found to be 7");         // This will execute only if pqr = 7
  endcase
end
endmodule

