//--------------------------------------------------------------------------------------------
//new_method:
//
//Used to create mailbox.
//
//--------------------------------------------------------------------------------------------

//Transmitter
class A;
  
  int a;
  int i;
  mailbox  m;

  function new(mailbox m1);

    this.m = m1;

  endfunction
 
  function void check();
   
    if(m == null)begin:BEGIN_1
        $display("Mailbox is not created");
      end:BEGIN_1

  

      else
        $display("Mailbox is created");

        $display("............................................");

  endfunction

  task tra_data();

    for(i=0;i<5;i++)begin:BEGIN_2
          m.put(a);
          a++;
          $display("Value of a =%0d",a);

        end:BEGIN_2
      
      $display("No of messages in mailbox=%0d",m.num());
  endtask

endclass:A


module  tb();

  A a1;
  mailbox main = new();
  initial begin:BEGIN_MAIN


    a1= new(main);

    $display("");
    $display("");
    a1.check();
    repeat(2)begin:BEGIN_1

      $display("............................................");
      a1.tra_data();

    end:BEGIN_1

  end:BEGIN_MAIN

  endmodule:tb


