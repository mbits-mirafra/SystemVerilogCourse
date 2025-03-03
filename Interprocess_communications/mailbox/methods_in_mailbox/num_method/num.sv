
//--------------------------------------------------------------------------------------------
//num_method:
//
//Returns number of messages in the mailbox.
//
//--------------------------------------------------------------------------------------------
class A;

   int a;  // Integer variable to store data.
   int i;  // Loop counter variable.
   mailbox m;  // Mailbox handle for inter-process communication.

   function new(mailbox m1);
      this.m = m1;  // Assign the passed mailbox handle to class member.
  endfunction

  task tra_data();

     for(i = 0; i < 3; i++) begin:BEGIN_MAIN  // Loop to put 3 values into the mailbox.

        a++;  // Increment 'a' before putting it into the mailbox.
        m.put(a);  // Insert the value of 'a' into the mailbox.
        $display("[%0t] Transmitter: value of a = %0d", $time, a);  // Display the current value of 'a' along with simulation time.
        $display(" No of messages in mailbox = %0d", m.num());  // Display the current number of messages in the mailbox.

      end:BEGIN_MAIN

      $display(".....................................................");  // Print a separator for clarity.

   endtask

endclass:A

module tb();

   A a1;  // Declare an object of class A.
   mailbox main = new();  // Create an unbounded mailbox.

   initial begin:BEGIN_MAIN

      a1 = new(main);  // Instantiate class A and pass the mailbox.
      repeat(2)  // Repeat the transaction process twice.
      begin:BEGIN_1

         a1.tra_data();  // Call the task to send data into the mailbox.

    end:BEGIN_1

   end:BEGIN_MAIN

endmodule:tb

