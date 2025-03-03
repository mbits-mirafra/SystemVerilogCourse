//--------------------------------------------------------------------------------------------
//Unbounded mailbox:
// Mailbox Example: Transmitter (Class A) and Receiver (Class B)
//
// - Class A (Transmitter) sends data using a mailbox.
// - Class B (Receiver) retrieves data from the mailbox.
// - The testbench initializes both classes and facilitates communication using the mailbox.
//--------------------------------------------------------------------------------------------

// Transmitter Class
class A;

  int a;        // Variable to store transmitted data
  int i;        // Loop index
  mailbox m;    // Mailbox reference

  // Constructor to initialize the mailbox
  function new(mailbox m1);
    this.m = m1;
  endfunction

  // Task to transmit data
  task tra_data();
    for (i = 0; i < 3; i++) begin : BEGIN_MAIN
      a++;         // Increment data
      m.put(a);    // Store data into the mailbox
      $display("[%0t] 1. Transmitter: value of a = %0d", $time, a);
    end : BEGIN_MAIN
  endtask

endclass : A


// Receiver Class
class B;

  int a;        // Variable to store received data
  int i;        // Loop index
  mailbox m;    // Mailbox reference

  // Constructor to initialize the mailbox
  function new(mailbox m2);
    this.m = m2;
  endfunction

  // Task to receive data from the mailbox
  task rec_data();
    begin : BEGIN_MAIN
      m.get(a);   // Retrieve data from the mailbox
      $display("[%0t] 2. Receiver: value of a = %0d", $time, a);
    end : BEGIN_MAIN
  endtask

endclass : B


// Testbench Module
module tb();

  A a1;               // Transmitter instance
  B b1;               // Receiver instance
  mailbox main = new(); // Create a mailbox for communication

  initial begin : BEGIN_MAIN
    a1 = new(main);  // Pass mailbox to transmitter
    b1 = new(main);  // Pass mailbox to receiver

    repeat(2) begin : BEGIN_1
      a1.tra_data();  // Transmit data
      $display("...............................................");
      b1.rec_data();  // Receive data
    end : BEGIN_1

  end : BEGIN_MAIN

endmodule : tb

