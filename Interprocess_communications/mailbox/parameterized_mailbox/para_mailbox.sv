//--------------------------------------------------------------------------------------------
//Parameterized mailbox:
//
//The parameterized mailbox can be put or get data of particular data_type.
//
//--------------------------------------------------------------------------------------------

//Transmitter
// Define class A
class A;
   int i; // Integer variable (not used in this example)
   string country; // String variable to store country name
   string place; // String variable to store place name

   mailbox #(string) m; // Mailbox to hold strings, used for communication between classes

   // Constructor for class A, takes a mailbox as an argument
   function new(mailbox m1);
      this.m = m1; // Assign the passed mailbox to the local mailbox variable
   endfunction

   // Task to transmit data (country and place) to the mailbox
   task tra_data();

      // First set of data
      country = "India";
      place = "Kashmir";
      m.put(country); // Put the country into the mailbox
      m.put(place); // Put the place into the mailbox
      $display("Transmitter: Country = %0s , must visit place = %0s",country,place);

      // Second set of data
      country = "South Africa";
      place = "Cape Town";
      m.put(country); // Put the country into the mailbox
      m.put(place); // Put the place into the mailbox
      $display("Transmitter: Country = %0s , must visit place = %0s",country,place);

      // Third set of data
      country = "Spain";
      place = "Barcelona";
      m.put(country); // Put the country into the mailbox
      m.put(place); // Put the place into the mailbox
      $display("Transmitter: Country = %0s , must visit place = %0s",country,place);

   endtask

endclass:A

// Define class B
class B;

   string country; // String variable to store country name
   string place; // String variable to store place name
   mailbox #(string) m; // Mailbox to hold strings, used for communication between classes

   // Constructor for class B, takes a mailbox as an argument
   function new(mailbox m2);
      this.m = m2; // Assign the passed mailbox to the local mailbox variable
   endfunction

   // Task to receive data (country and place) from the mailbox
   task rec_data();

       // Receive the first set of data
       m.get(country); // Get the country from the mailbox
       m.get(place); // Get the place from the mailbox
       $display("Receiver: Country = %0s , must visit place = %0s",country,place);

       // Receive the second set of data
       m.get(country); // Get the country from the mailbox
       m.get(place); // Get the place from the mailbox
       $display("Receiver: Country = %0s , must visit place = %0s",country,place);

       // Receive the third set of data
       m.get(country); // Get the country from the mailbox
       m.get(place); // Get the place from the mailbox
       $display("Receiver: Country = %0s , must visit place = %0s",country,place);

   endtask

endclass:B

// Define the testbench module
module  tb();

   A a1; // Instance of class A
   B b1; // Instance of class B
   int i; // Integer variable (not used in this example)
   mailbox #(string) main = new(6); // Create a mailbox with a depth of 6

   initial begin:BEGIN_MAIN

      // Instantiate class A and class B with the same mailbox
      a1= new(main);
      b1 = new(main);

      // Display empty lines for better readability
      $display("");
      $display("");

      // Call the task in class A to transmit data
      a1.tra_data();

      // Display a separator line
      $display(".......................................................................");

      // Call the task in class B to receive data
      b1.rec_data();

   end:BEGIN_MAIN

endmodule:tb

