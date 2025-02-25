//This is similar to case but checks the case expressions
// in a serial manner by giving priority
// even if you have multiple expressions correct then the first correct expression only will be evaluated

//In this priority case, two condition is true 
//but this will execute the first condition without giving any warning and error

module top;
bit [2:0] pqr;

initial begin
  pqr = 5;

  priority case (pqr)
5 : $display ("Found to be 5");
5 : $display ("Again found to be 5");
7 : $display ("Found to be 7");
endcase
end
endmodule
