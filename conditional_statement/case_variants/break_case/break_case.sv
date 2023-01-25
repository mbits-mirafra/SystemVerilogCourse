
module top;
bit [1:0] x;

initial begin
  x = 2'b01;
//  initial begin
  //Here expression= "x" should match one of the items
  //If none of the case items match the given expression, statement within the default item is executed
    case(x)
      00 : $display("Value of x = %0b", x);
      01 :begin
          $display("Value of x = %0b",x);
          break;
           end
      10 : $display("Value of x = %0b",x);
      11 : $display("Value of x = %0b" ,x);
      default : $display("Value of x is not find");
    endcase
  end
  endmodule


