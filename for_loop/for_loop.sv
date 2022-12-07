//--------------------------------------------------------------------------------------------
// Module: tb
// jskfjshjfhs
// fdsjfjkdhfshf
// sdfskjfkjsfd
// sddfkshfkkhdsjkhdkfskfhdjkhs
//--------------------------------------------------------------------------------------------
module tb;

  string array [2] = '{"apple", "orange"};

  initial begin
    for (int i=0; i < $size(array); i++) begin
      $display("array[%0d] = %s", i, array[i]);
    end
  end

endmodule: tb
