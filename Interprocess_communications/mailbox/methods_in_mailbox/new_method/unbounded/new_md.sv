//--------------------------------------------------------------------------------------------
//new_method:
//
//Used to create mailbox.
//
//--------------------------------------------------------------------------------------------
class A;

   int a;  // Integer variable to store data.
   int i;  // Loop counter variable.
   mailbox  m;  // Mailbox handle for inter-process communication.

   function new(mailbox m1);
      this.m = m1;  // Assign the passed mailbox handle to class member.
   endfunction

   function void check();

      if(m == null)begin:BEGIN_1  // Check if the mailbox is null.
         $display("Mailbox is not created");
      end:BEGIN_1

      else
         $display("Mailbox is created");  // Display message if mailbox exists.

         $display("............................................");

   endfunction

   task tra_data();

      for(i=0; i<5; i++) begin:BEGIN_2  // Loop to put values into the mailbox.
         m.put(a);  // Put the value of 'a' into the mailbox.
         a++;  // Increment 'a' after putting it into the mailbox.
         $display("Value of a = %0d", a);  // Display the value of 'a'.
      end:BEGIN_2

      $display("No of messages in mailbox = %0d", m.num());  // Display the number of messages in the mailbox.
   endtask

endclass:A

module tb();

   A a1;  // Declare an object of class A.
   mailbox main = new();  // Create a mailbox with default size (infinite).

   initial begin:BEGIN_MAIN

      a1 = new(main);  // Create an instance of class A and pass the mailbox.

      $display("");
      $display("");
      a1.check();  // Call check() function to verify mailbox creation.

      repeat(2) begin:BEGIN_1  // Repeat the tra_data task twice.
         $display("............................................");
         a1.tra_data();  // Call the task to transfer data to the mailbox.
      end:BEGIN_1

   end:BEGIN_MAIN

endmodule:tb

