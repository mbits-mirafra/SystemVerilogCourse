module events_ex;
event e1; //declaring event e1
event e2; //declaring event e2
event e3; //declaring event e3
initial begin
  fork
    //process-1, triggers the event e3
  begin
    #6;
    $display($time,"\tTriggering The Event e3");
    ->e3;
  end
  //process-2, triggers the event e1
begin
  #2;
  $display($time,"\tTriggering The Event e1");
  ->e1;
end
//process-3, trighers the event e2
 begin
   #8;
   $display($time,"\t Triggering The Event e2");
   ->e2;
 end
 //process-4, wait for the events to trigger in order of e1,e3 and e2
begin
  $display($time,"\tWaiting for the Event's to trigger");
  wait_order(e1,e3,e2)
  $display($time,"\tEvent's triggered Inorder");
  else
    $display($time,"\tEvent's triggered Out-Of-Order");
  end
join
end
endmodule

