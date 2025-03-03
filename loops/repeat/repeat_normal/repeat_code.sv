// repeat - use to repeat the number of statements for the given number of times.

module repeat_code;
  // initial block start execution at 0 time units
  initial begin 
    // start repeat loop and repeating for four times
    repeat(4) begin
      //Inside reepat loop display contents for four times
      $display ("Good morning");
      $display ("Keep shining");
      $display ("--------------");
    end 
  end 
endmodule

