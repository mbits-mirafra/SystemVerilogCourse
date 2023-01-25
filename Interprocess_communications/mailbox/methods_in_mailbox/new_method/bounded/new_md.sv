//--------------------------------------------------------------------------------------------
//new_method:
//
//Used to create mailbox. If any argument it will be taken as size of the mailbox.
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

  task check();

      if(m == null)begin:BEGIN_1
        $display("Mailbox is not created");
      end:BEGIN_1

      else
        $display("Mailbox is created");

        for(i=0;i<3;i++)begin:BEGIN_2

          a++;
          m.put(a);
          $display("Value of a = %0d",a);

        end:BEGIN_2

  endtask

endclass:A


module  tb();

  A a1;
  mailbox main = new(3);
  initial begin:BEGIN_MAIN


    a1= new(main);

    $display("");
    $display("");
    a1.check();

  end:BEGIN_MAIN

  endmodule:tb


