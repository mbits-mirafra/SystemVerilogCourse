//--------------------------------------------------------------------------------------------
// syntax : ->event_name;//triggers the event
//
//          @(event_name);// waits the event to be triggered
//          wait(event_name.triggered)//this also waits for event to be triggered
//
//          both of above are true but when both happens at same time then race around condition occurs
//--------------------------------------------------------------------------------------------
module event1();

  event event_1,event_2,event_3;

  initial
  begin
    #10 -> event_1;
    $display("[%0d] Event_1 Triggered from block1",$time);
    @(event_1);
    $display("[%0d] Event_1 catched in block2",$time);
  end
/* 
  initial
  begin
    #10 @(event_1.triggered);
    $display("[%0d] Event_1 catched in block2",$time);
  end

  initial
  begin
    #10 wait(event_1.triggered);
    $display("[%0d] Event_1 catched in block3",$time);
  end
*/
endmodule
