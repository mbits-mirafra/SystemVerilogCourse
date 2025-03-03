module merge_events;

  // Declare two events a and b
  event a, b;

  initial begin
    fork
      // Trigger event 'a' after 50 time units
      #50 ->a;

      // Trigger event 'b' after 30 time units
      #30 ->b;

      // Merge event 'b' with event 'a' after 20 time units
      #20 b = a;

      // Process to wait for event 'a' to be triggered
      begin
        wait(a.triggered);
        $display("[%0t] event a is done", $time);
      end

      // Process to wait for event 'b' to be triggered
      begin
        wait(b.triggered);
        $display("[%0t] event b is done ", $time);
      end
    join
  end

endmodule

