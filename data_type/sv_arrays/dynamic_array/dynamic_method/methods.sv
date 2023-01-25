// module declaration for dynamic array methods example
module methods_dynamic;

// creating dynamic array of type int
  int xyz [];

  initial begin
    // give size of dynamic array for eg. take 10
    xyz = new[10];

    // initialize array elements with 7 values
    xyz = '{11,12,13,14,15,16,17,18,19,20};

    // iterate through array and print values
    $display("");
    $display("// dynamic array values");
    foreach(xyz[i])begin
      $display("value of xyz[%0d]=%0d",i,xyz[i]);
    end

    // printing the dynamic array size
    $display("");
    $display("// displaying the array size");
    $display("%0d",xyz.size());

    //empties the entire array 
    xyz.delete();
    $display("");
    $display("// after deleting all elements, size of the array ");
    $display("%0d",xyz.size());
    $display("");
  end

endmodule : methods_dynamic

