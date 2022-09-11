`include "driver.sv"

//module:test
module test(adder intf);

//declaring the driver  instance
driver drv;

initial
begin

  //creating the driver 
  drv = new(intf);
  //calling the task run of drv
  drv.run();
end
endmodule:test
