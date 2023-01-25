// module declaration for dynamic array example
module dynamic_array;

// creating dynamic array of type int
  int abc [];

  initial begin
    // give size of dynamic array for eg. take 7
    $display("");
    $display("// setting array size to seven");
    abc = new[7];

    // initialize array elements with 7 values
    abc = '{11,12,13,14,15,16,17};

    // iterate through array and print values
    $display("");
    $display("// dynamic array values");
    foreach(abc[i])begin
      $display("value of abc[%0d]=%0d",i,abc[i]);
    end
    $display("");
  end
endmodule : dynamic_array

