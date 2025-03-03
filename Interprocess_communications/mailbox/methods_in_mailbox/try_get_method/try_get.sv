//--------------------------------------------------------------------------------------------
//try_get_method:
//
//Non blocking method that stores data in the mailbox.
//
//--------------------------------------------------------------------------------------------
//Transmitter
class A;

   int a;  // Integer variable to store data.
   int i;  // Loop counter variable.
   mailbox m;  // Mailbox handle for inter-process communication.

   function new(mailbox m1);
      this.m = m1;  // Assign the passed mailbox handle to class member.
   endfunction

   task tra_data();

      for(i = 0; i < 4; i++) begin:BEGIN_MAIN  // Loop to put 4 values into the mailbox.

         a++;  // Increment 'a' before inserting into the mailbox.
         m.put(a);  // Insert the value of 'a' into the mailbox.
         $display("[%0t] 1. Transmitter: value of a = %0d", $time, a);  // Display transmitted value.

      end:BEGIN_MAIN

      $display("put successful");  // Print confirmation message.

   endtask

endclass:A

class B;

   int a;  // Integer variable to store received data.
   int i;  // Loop counter variable.
   mailbox m;  // Mailbox handle for receiving data.

   function new(mailbox m2);
      this.m = m2;  // Assign the passed mailbox handle to class member.
   endfunction

   task rec_data();

      repeat(5) begin:BEGIN_MAIN  // Attempt to retrieve 5 values from the mailbox.

         if( m.try_get(a))  // Try to get a value from the mailbox without blocking.
            $display("[%0t] 2. Receiver: value of a = %0d", $time, a);  // Display received value.

         else
            $display("Failed while getting the value as mailbox is empty ");  // Print error if mailbox is empty.

      end:BEGIN_MAIN

      $display("get successful");  // Print confirmation message.

   endtask

endclass:B

module tb();

   A a1;  // Declare an object of class A (Transmitter).
   B b1;  // Declare an object of class B (Receiver).
   mailbox main = new(4);  // Create a bounded mailbox with a size of 4.

   initial begin:BEGIN_MAIN

      a1 = new(main);  // Instantiate class A and pass the mailbox.
      b1 = new(main);  // Instantiate class B and pass the same mailbox.

      repeat(2) begin:BEGIN_1  // Repeat the transaction process twice.

         a1.tra_data();  // Call the transmitter task to send data into the mailbox.
         $display("...............................................");  // Print separator.
         b1.rec_data();  // Call the receiver task to retrieve data from the mailbox.

       end:BEGIN_1

   end:BEGIN_MAIN

endmodule:tb

