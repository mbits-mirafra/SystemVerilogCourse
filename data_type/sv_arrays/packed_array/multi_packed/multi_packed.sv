// module declaration for multi dimensional packed array
module multi_packed();

bit [2:0][3:0] xyz; // Declare a 2D packed array (3 rows of 4-bit each)

  initial begin
    // Assigning a 12-bit hexadecimal value to the 2D array  
    xyz = 12'hdfe;

    // Displaying the array value in one line using %p (pretty-print format)  
    $display("");
    $display("// example of 2 dimensional array");
    $display("");
    $display("// array value printing in one line");
    $display("value of array xyz = %p",xyz);
    $display("");
    $display("// array value printing bit by bit");

    // iterating through all elements of array
    foreach(xyz[i]) begin
       foreach(xyz[i][j]) begin
         $display("value of xyz[%0d][%0d] = %0d",i,j,xyz[i][j]);
       end
    end
  end
endmodule : multi_packed


