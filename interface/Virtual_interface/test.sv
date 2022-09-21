//include the driver file
`include "driver.sv"

//module:test
module test(adder intf);

//declaring the driver instance
driver drv;

initial
begin

//creating the driver instance
drv = new(intf);

//calling the task run
drv.run();

end
endmodule:test
