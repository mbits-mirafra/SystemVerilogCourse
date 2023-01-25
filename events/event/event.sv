//--------------------------------------------------------------------------------------------
// syntax : ->event_name;//triggers the event
//
//          @(event_name);// waits the event to be triggered
//          wait(event_name.triggered)//this also waits for event to be triggered
//
//          Both of above are true but when both triggering and waiting  happens at same time
//          then race around condition occurs
//--------------------------------------------------------------------------------------------
module events();

  event event_1,event_2,event_3;

  initial begin
    #5 ->> event_1;
    $display("[%0d] Event_1 Triggered from block1",$time);
  end
  
  initial
  begin
    #5 @(event_1.triggered);
    $display("[%0d] Event_1 catched in block2",$time);
  end
/*
  initial
  begin
    #5 wait(event_1.triggered);
    $display("[%0d] Event_1 catched in block3",$time);
  end
*/
endmodule
