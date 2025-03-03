//--------------------------------------------------------------------------------------------
//new_method:
//
//Used to create mailbox. If any argument it will be taken as size of the mailbox.
//
//--------------------------------------------------------------------------------------------
class A;

   int a;  // Integer variable 'a' to store values.
   int i;  // Loop counter variable 'i'.
   mailbox  m;  // Mailbox handle to store and transfer data.

   function new(mailbox m1);
      this.m = m1;  // Assign the passed mailbox handle to class member.
   endfunction

   task check();

      if(m == null)begin:BEGIN_1  // Check if the mailbox is null.
         $display("Mailbox is not created");
      end:BEGIN_1

      else
         $display("Mailbox is created");

         for(i=0;i<3;i++)begin:BEGIN_2  // Loop to put values in the mailbox.

            a++;  // Increment 'a'.
            m.put(a);  // Put the incremented value of 'a' into the mailbox.
            $display("Value of a = %0d",a);  // Display the value of 'a'.

         end:BEGIN_2

    endtask

endclass:A

module  tb();

   A a1;  // Declare an object of class A.
   mailbox main = new(3);  // Create a mailbox with a depth of 3.

   initial begin:BEGIN_MAIN

      a1= new(main);  // Create an instance of class A and pass the mailbox.
      $display("");
      $display("");
      a1.check();  // Call the check() task to test the mailbox operations.

    end:BEGIN_MAIN

endmodule:tb

