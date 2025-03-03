//--------------------------------------------------------------------------------------------
//try_peek_method:
//
//This method tries to copy data from mailbox without removing it from mailbox.
//
//--------------------------------------------------------------------------------------------
//Transmitter
// Class A: This class acts as the transmitter, sending data to the mailbox
class A;

   int a;         // Data variable
   int i;         // Loop counter
   mailbox m;     // Mailbox for communication

   // Constructor to initialize the mailbox
   function new(mailbox m1);
      this.m = m1;
   endfunction

   // Task to transmit data into the mailbox
   task tra_data();
      for (i = 0; i < 1; i++) begin : BEGIN_MAIN
         a++;               // Increment the value of 'a'
         m.put(a);          // Put the value into the mailbox
         $display("[%0t] 1. Transmitter: value of a = %0d", $time, a);
      end : BEGIN_MAIN

      $display("put successful");
      $display("Messages in mailbox = %0d", m.num()); // Display number of messages in the mailbox
   endtask

endclass : A

// Class B: This class acts as the receiver, retrieving data from the mailbox
class B;

   int a;         // Data variable
   int i;         // Loop counter
   mailbox m;     // Mailbox for communication

   // Constructor to initialize the mailbox
   function new(mailbox m2);
      this.m = m2;
   endfunction

   // Task to receive data from the mailbox
   task rec_data();
      for (i = 0; i < 2; i++) begin : BEGIN_MAIN

         // Try to peek at the mailbox without removing the value
         if (m.try_peek(a)) begin : BEGIN_1
            $display("[%0t] Peeking value of a = %0d", $time, a);
            $display("Peek successful");
         end : BEGIN_1
         else begin
            $display("Peek failed as mailbox is empty");
            return; // Exit the function if mailbox is empty
         end

      end : BEGIN_MAIN

      // Retrieve and remove the value from the mailbox
      m.get(a);
      $display("Receiver: value of a = %0d", a);
      $display("get successful");

   endtask

endclass : B

// Testbench module
module tb();

   A a1;                 // Instance of transmitter class
   B b1;                 // Instance of receiver class
   mailbox main = new(2); // Mailbox with size 2 for communication

   initial begin : BEGIN_MAIN
      a1 = new(main);  // Initialize transmitter with mailbox
      b1 = new(main);  // Initialize receiver with mailbox

      // Transmit and receive data
      a1.tra_data();
      $display("...............................................");
      b1.rec_data();
      $display("...............................................");
      b1.rec_data();
      $display("End of program");
   end : BEGIN_MAIN

endmodule : tb

