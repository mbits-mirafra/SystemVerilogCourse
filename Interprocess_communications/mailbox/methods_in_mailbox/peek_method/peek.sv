//--------------------------------------------------------------------------------------------
//peek_method:
//
//Copies data from the mailbox without removing it from a mailbox
//
//--------------------------------------------------------------------------------------------
//Transmitter
class A;
    
  int a;
  int i;
  mailbox m;
          
  function new(mailbox m1);
    this.m = m1;
  endfunction
                    
  task tra_data();

    for(i=0;i<1;i++)begin:BEGIN_MAIN

      a++;
      m.put(a);
      $display("[%0t] 1. Transmitter: value of a = %0d",$time,a);

    end:BEGIN_MAIN

    $display("put successful");
    $display("Messages in mailbox = %0d",m.num());
                                                                    
  endtask
                                                         
endclass:A

//Receiver
class B;

  int a;
  int i;
  mailbox m;
        
  function new(mailbox m2);
    this.m = m2;
  endfunction
               
  task rec_data();

    for(i =0;i<2;i++)begin:BEGIN_MAIN
      m.peek(a);
      //begin
      $display("[%0t] Peeking value of a = %0d",$time,a);
      $display("Peek successful");
    //end
    //else
      //$display("po ra");
    end:BEGIN_MAIN

    m.get(a);

    $display("[%0t] 2. Receiver: value of a = %0d",$time,a);


    $display("get successful");
    $display("Messages in mailbox = %0d",m.num());
  endtask

endclass:B


module tb();
    
  A a1;
  B b1;
  mailbox main = new(2);  
        
  initial begin:BEGIN_MAIN

    a1 = new(main);
    b1 = new(main);
    a1.tra_data();
    $display("...............................................");
    b1.rec_data();
    $display("...............................................");
    b1.rec_data();
    $display("End of program");

  end:BEGIN_MAIN

endmodule:tb
