//--------------------------------------------------------------------------------------------
//peek_method:
//
//Copies data from the mailbox without removing it from a mailbox
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
      $display("Messages in mailbox = %0d", m.num()); // Display number of messages in mailbox
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
         m.peek(a);  // Peek the value from the mailbox without removing it
         $display("[%0t] Peeking value of a = %0d", $time, a);
         $display("Peek successful");
      end : BEGIN_MAIN

      m.get(a);   // Get the value from the mailbox and remove it
      $display("[%0t] 2. Receiver: value of a = %0d", $time, a);
      $display("get successful");
      $display("Messages in mailbox = %0d", m.num()); // Display number of messages in mailbox
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

