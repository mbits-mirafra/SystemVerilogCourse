// module declaration for packed array
module unpacked_array;

//declaring byte and int type for unpacked arrays
  byte a[8];
  int abc[10];

  initial begin
    // assigning value to array
    a = '{4,5,6,2,3,7,9,10};
    
    // generating random values between (10,50) for int type unpacked arrays
    foreach(abc[i]) begin
      abc[i] = $urandom_range(10,50);
    end 
   
    //displaying the unpacked arrays values
    $display("");
    $display("// displaying values of unpacked arrays");
    // iterate through each bit in array and display values.
    foreach(a[i]) begin
      $display("values of a[%0d] = %0d",i,a[i]);
    end

    //displaying the int type unpacked arrays values in one line 
    $display("");
    $display("// displaying another unpacked array values in one line");
    $display("abc = %p",abc);
    $display("");
  end
endmodule : unpacked_array


