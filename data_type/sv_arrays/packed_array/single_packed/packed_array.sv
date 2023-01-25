// module declaration for packed array
module packed_array;

//first declaring single bit data type bit,logic
  bit [3:0]abc;
  logic [15:0]pqr;
  reg [7:0]xyz;

 initial begin
  // assigning value to the array
  abc = 4'b0110;
  pqr = 16'h10fe;
  xyz = 8'd16;
 
  $display("");
  $display("// example for single dimensional packed array");
  $display("");

  //taking each bit and printing value it's value using $display built in function
  $display("// displaying the bit data type values");
  foreach(abc[i]) begin
    $display("data of abc[%0d] = %0b",i,abc[i]);
  end
  $display("");
  //taking each bit of logic data type and printing it's value as same as above
  $display("// displaying the logic data type values");
  foreach(pqr[i]) begin
    $display("data of pqr[%0d] = %0b",i,pqr[i]);
  end
  $display("");
  //taking each bit of reg data type and printing it's value as same as above
  $display("// displaying the reg data type values");
  foreach(xyz[i]) begin
    $display("data of xyz[%0d] = %0b",i,xyz[i]);
  end
  $display("");
 end

endmodule : packed_array

