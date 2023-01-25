// module declaration for multi dimensional packed array
module multi_packed();

// declaring two dimensional bit data type
  bit [2:0][3:0] xyz;

  initial begin
    // assigning the value to the array
    xyz = 12'hdfe;

    // displaying the value in one line
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


