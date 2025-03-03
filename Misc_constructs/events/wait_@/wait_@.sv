module wait_example;

  // Declare an event 'e'
  event e;

  // Initial block to trigger the event
  initial begin
    $display($time, "\t triggering the event");
    ->e;  // Trigger event 'e'
  end

  // Initial block waiting for the event using 'wait'
  initial begin
    $display($time, "\t waiting for the event using wait");
    wait(e.triggered);  // Wait until event 'e' is triggered
    $display($time, "\t event is triggered using wait");
  end

  // Initial block waiting for the event using '@'
  initial begin
    $display($time, "\t waiting for the event using @");
    @(e.triggered);  // Wait for event 'e' using '@'
    $display($time, "\t event is triggered using @");
  end

endmodule

