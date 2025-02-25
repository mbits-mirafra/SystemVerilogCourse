
//In this unique0 case, more than one condition is true
//it will  print  warning with no error          

module top;
bit [1:0] x;
initial begin
  x = 2'b01;

  unique0 case(x)
  00 : $display(" Value of x is = %0b", x);
  01 : $display(" Value of x is = %0b", x);
  10 : $display(" Value of x is = %0b", x);
  11 : $display(" Value of x is = %0b", x);
  01 : $display(" Value of x is = %0b", x);
  endcase
end
endmodule


