
module wait_example;
event e;
initial begin 
  $display($time,"\t triggering the event");
  ->e;
end 
initial begin
  $display($time,"\t waiting for the event using wait");
  wait(e.triggered);
  $display($time,"\t event is triggered using wait");
end
initial begin
  $display($time,"\t waiting for the event using @");
  @(e.triggered);
  $display($time,"\t event is triggered using @");
end
endmodule
