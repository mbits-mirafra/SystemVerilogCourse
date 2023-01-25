//--------------------------------------------------------------------------------------------
//try_get_method:
//
//Non blocking method that stores data in the mailbox.
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

    for(i =0;i<4;i++)begin:BEGIN_MAIN

      a++;
      m.put(a);
      $display("[%0t] 1. Transmitter: value of a = %0d",$time,a);
  
    end:BEGIN_MAIN

    $display("put successful");  
                                                                    
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

    repeat(5)begin:BEGIN_MAIN

     if( m.try_get(a))

      $display("[%0t] 2. Receiver: value of a = %0d",$time,a);

      else

        $display("Failed while trying to get the value as mailbox is empty");

    end:BEGIN_MAIN
    
    $display("get successful");

  endtask

endclass:B


module tb();
    
  A a1;
  B b1;
  mailbox main = new(4);  
        
  initial begin:BEGIN_MAIN

    a1 = new(main);
    b1 = new(main);
    repeat(2)
    begin:BEGIN_1
 
      a1.tra_data();
      $display("...............................................");
      b1.rec_data();
    end:BEGIN_1

  end:BEGIN_MAIN

endmodule:tb
