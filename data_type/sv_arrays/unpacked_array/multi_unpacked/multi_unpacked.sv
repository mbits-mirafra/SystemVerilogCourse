// module declaration for packed array
module multi_unpacked;

//declaring int type for unpacked arrays
  int abc[2][3];

  initial begin
    // generating random values between (10,50) for int type unpacked arrays
    foreach(abc[i]) begin
      foreach(abc[i][j]) begin
        abc[i][j] = $urandom_range(10,50);
      end
    end 
   
    //displaying the unpacked arrays values
    $display("");
    $display("// displaying values of 2 dimensional unpacked arrays");
    // iterate through each bit in array and display values.
    foreach(abc[i]) begin
      foreach(abc[i][j]) begin
        $display("values of abc[%0d][%0d] = %0d",i,j,abc[i][j]);
      end
    end

    //displaying the int type unpacked arrays values in one line 
    $display("");
    $display("// displaying values of 2 dimensional unpacked array in one line");
    $display("abc = %p",abc);
    $display("");
  end
endmodule : multi_unpacked


