module non_blocking_event;
  event BJT;
  initial begin 
    $display($time,"\t triggering the event");
    ->>BJT;
  end 
  initial begin
    $display($time,"\t waiting for the event using wait");
    wait(BJT.triggered);
    $display($time,"\t event BJT is triggered using wait");
  end
  initial begin
    $display($time,"\t waiting for the event using @");
    @(BJT.triggered);
    $display($time,"\t event BJT is triggered using @");
  end
endmodule  
