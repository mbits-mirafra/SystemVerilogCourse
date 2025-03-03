//Unpacked structure
module union_type();
 // Declaration of Union members
  union {
    int x;  // 32-bit integer member
    byte y; // 8-bit byte member
  } data;   // Union variable named 'data'

    initial begin

      // Assign a hexadecimal value to the integer member 'x'
      data.x = 'hABCF10CD;

      $display("\n x = %0h", data.x );
      $display("\n y = %0h", data.y );

    
      // Assign a new hexadecimal value to the byte member 'y':

      data.y = 'h56;

      $display("\n x = %0h", data.x );
      $display("\n y = %0h", data.y );
      $displayh("\n data = %p", data);
      // Display the size of the unpacked union in bits
      $display("\n size of unpacked union :", $bits(data));
    end
endmodule

