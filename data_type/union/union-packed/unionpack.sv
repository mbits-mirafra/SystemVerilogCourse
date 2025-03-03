// Define a packed union named 'ABC_u'
typedef union packed {
  bit [7:0] B;  // 8-bit field of type 'bit'
  logic [7:0] C; // 8-bit field of type 'logic'
} ABC_u; // Union name

module unionpacked;

  // Declare a variable of type 'ABC_u'
  ABC_u abc;

  initial begin
    // Initialization of values
    abc.B = 'hab; // Assign hexadecimal value 'ab' to the field 'B'
    $display("\n abc.B = %0h", abc.B); // Display the value of 'B'

    abc.C = 'hcd; // Assign hexadecimal value 'cd' to the field 'C'
    $display("\n abc.C = %0h", abc.C); // Display the value of 'C'

    // Display the size of the union in bits
    $display("\n size is: %0d", $bits(ABC_u));
  end
endmodule
