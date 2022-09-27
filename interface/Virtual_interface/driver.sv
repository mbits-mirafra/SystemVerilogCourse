
//class:driver
class driver;

//Declaration of virtual interface
//syntax: virtual interface_name interface_instance;
virtual adder vif;

//constructor
function new(virtual adder vif);
//this.vif refer to class driver
//vif refer to the function argument
this.vif = vif;

endfunction
//task
task run();

repeat(10) begin
//interface_instance.variable
vif.in_a = $random;
vif.in_b = $random;
vif.in_c = $random;
$display("");
$display("//INPUT:Inputs of full adder  \n a=%0b, b=%0b, cin =%0b", vif.in_a,vif.in_b, vif.in_c);
#5;
$display("");
$display("//OUTPUT:Outputs of full adder \n sum=%0b, carry = %0b\n", vif.out_sum, vif.out_carry);


end
endtask
endclass

