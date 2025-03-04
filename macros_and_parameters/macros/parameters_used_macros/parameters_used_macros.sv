module tb();
  parameter int data = 5; // Parameter declaration inside the module
 //parameters are evaluated during the elaboration phase

  `define DATA data // Macro definition
 //macros are processed during the pre-compilation phase 

  int a, b;

  initial begin
    $display("DATA=%0d", `DATA); 
    // This will display "DATA=5" because `DATA is replaced by "data", and data is a parameter with value 5
    
    b = `DATA + 2; 
    // This will be replaced by "data + 2", and since data is 5, b will be 7

    $display("b=%0d", b); 
    // This will display "b=7"
  end
endmodule
