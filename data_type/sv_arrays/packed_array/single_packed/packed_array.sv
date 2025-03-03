// module declaration for packed array
module packed_array;

  bit [3:0]abc;       // 4-bit packed array using 'bit' (only stores 0 or 1)
  logic [15:0] pqr;   // 16-bit packed array using 'logic' (stores 0, 1, x, z)
  reg [7:0] xyz;      // 8-bit packed array using 'reg' (legacy type, similar to logic

 initial begin
  abc = 4'b0110;     // Assigning a 4-bit binary value to 'abc'  
  pqr = 16'h10FE;    // Assigning a 16-bit hexadecimal value to 'pqr'  
  xyz = 8'd16;       // Assigning an 8-bit decimal value to 'xyz'  
  
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

