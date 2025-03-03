//--------------------------------------------------------------------------------------------
// Bounded Mailbox:
//
// A bounded mailbox has a predefined size. It becomes full when it reaches its capacity.
// Here, the mailbox size is set to 2, meaning it can hold a maximum of 2 messages at a time.
//--------------------------------------------------------------------------------------------

// Transmitter class
class A;

  int a;         // Integer variable to store transmitted data
  int i;         // Loop index
  mailbox m;     // Mailbox reference

  // Constructor to initialize the mailbox
  function new(mailbox m1);
    this.m = m1;
  endfunction

  // Task to transmit data
  task tra_data();
    for(i = 0; i < 3; i++) begin : BEGIN_MAIN

      if(m.num() == 2) begin : BEGIN_1  // Check if the mailbox is full
        $display("Mailbox is full");
      end : BEGIN_1

      else begin : BEGIN_2
        a++;           // Increment data
        m.put(a);      // Store data into the mailbox
        $display("[%0t] 1. Transmitter: value of a = %0d", $time, a);
      end : BEGIN_2

    end : BEGIN_MAIN
  endtask
    
endclass : A


// Receiver class
class B;
 
  int a;       // Integer variable to store received data
  int i;       // Loop index
  mailbox m;   // Mailbox reference
        
  // Constructor to initialize the mailbox
  function new(mailbox m2);
    this.m = m2;
  endfunction
               
  // Task to receive data from the mailbox
  task rec_data();
    begin : BEGIN_MAIN
      m.get(a);  // Retrieve data from the mailbox
      $display("[%0t] 2. Receiver: value of a = %0d", $time, a);
    end : BEGIN_MAIN
  endtask

endclass : B

                                     
// Testbench module
module tb();
                                            
  A a1;                   // Transmitter instance
  B b1;                   // Receiver instance
  mailbox mb = new(2);    // Create a bounded mailbox with a size of 2
                                             
  initial begin : BEGIN_MAIN

    a1 = new(mb);  // Pass mailbox to transmitter
    b1 = new(mb);  // Pass mailbox to receiver

    repeat(3) begin : BEGIN_1
      a1.tra_data();  // Transmit data
      $display("...............................................");
      b1.rec_data();  // Receive data
    end : BEGIN_1

  end : BEGIN_MAIN

endmodule : tb

