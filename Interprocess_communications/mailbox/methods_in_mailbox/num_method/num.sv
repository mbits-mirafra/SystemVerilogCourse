
//--------------------------------------------------------------------------------------------
//num_method:
//
//Returns number of messages in the mailbox.
//
//--------------------------------------------------------------------------------------------
class A;
    
  int a;
  int i;
  mailbox m;
          
  function new(mailbox m1);
    this.m = m1;
  endfunction
                    
  task tra_data();

    for(i =0;i<3;i++)begin:BEGIN_MAIN

      a++;
      m.put(a);
                                                    
      $display("[%0t] Transmitter: value of a = %0d",$time,a);

      $display(" No of messages in mailbox = %0d",m.num());
                                                          
                                                          
    end:BEGIN_MAIN

    $display(".....................................................");
                                                                    
  endtask
                                                         
endclass:A



module tb();
    
  A a1;
  mailbox main = new();  
        
  initial begin:BEGIN_MAIN

    a1 = new(main);                         
    repeat(2)
    begin:BEGIN_1

      a1.tra_data();
               
    end:BEGIN_1

  end:BEGIN_MAIN

endmodule:tb
