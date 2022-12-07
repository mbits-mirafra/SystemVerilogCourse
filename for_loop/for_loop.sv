//--------------------------------------------------------------------------------------------
// Module: tb
// jskfjshjfhs
// fdsjfjkdhfshf
// sdfskjfkjsfd
// sddfkshfkkhdsjkhdkfskfhdjkhs
//--------------------------------------------------------------------------------------------
module tb;
  bit clk;

  string array [2] = '{"apple", "orange"};

  initial begin
    clk = 0;
    for (int i=0; i < $size(array); i++) begin
      $display("array[%0d] = %s", i, array[i]);
    end
  end

  always begin
    #5 clk = ~clk;
  end

  initial begin
    $dumpfile("verilog.vcd");
    $dumpvars();
  end

  initial begin
    #50 $finish;
  end
endmodule: tb
