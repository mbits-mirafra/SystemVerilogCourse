`include "driver.sv"
module test(adder intf);
driver drv;
initial
begin
  drv = new(intf);
  drv.run();
end
endmodule
