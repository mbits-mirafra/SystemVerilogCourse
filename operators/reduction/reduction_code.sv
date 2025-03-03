module test;
  // Declare a 4-bit logic variable 'a' and an output variable 'y'
  logic [3:0] a;
  logic y;

  initial begin
    a = 4'b1011;
    $display("\n \t The value of a is %0b", a);

    // Reduction NOT (~)
    y = !a;  
    $display("\n \t The reduction output of NOT is %0d", y);
    // '!' (logical NOT) checks if 'a' is zero; returns 1 if a=0, else returns 0

    // Reduction OR (|)
    y = |a;  
    $display("\n \t The reduction output of OR is %0b", y);
    // '|' (reduction OR) performs a bitwise OR across all bits of 'a'

    // Reduction AND (&)
    y = &a;  
    $display("\n \t The reduction output of AND is %0d", y);
    // '&' (reduction AND) performs a bitwise AND across all bits of 'a'

    // Reduction NOR (~|)
    y = ~|a;  
    $display("\n \t The reduction output of NOR is %0b", y);
    // '~|' (reduction NOR) is the negation of reduction OR

    // Reduction NAND (~&)
    y = ~&a;  
    $display("\n \t The reduction output of NAND is %0b", y);
    // '~&' (reduction NAND) is the negation of reduction AND

    // Reduction XOR (^)
    y = ^a;  
    $display("\n \t The reduction output of XOR is %0b", y);
    // '^' (reduction XOR) performs a bitwise XOR across all bits of 'a'

    // Reduction XNOR (~^)
    y = ~^a;  
    $display("\n \t The reduction output of XNOR is %0b", y);
    // '~^' (reduction XNOR) is the negation of reduction XOR

  end
endmodule

