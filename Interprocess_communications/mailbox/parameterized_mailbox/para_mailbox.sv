//--------------------------------------------------------------------------------------------
//Parameterized mailbox:
//
//The parameterized mailbox can be put or get data of particular data_type.
//
//--------------------------------------------------------------------------------------------

//Transmitter
class A;
  int i;
  string country;
  string place;
  
  mailbox #(string) m;

  function new(mailbox m1);

    this.m = m1;

  endfunction

  task tra_data();

      country = "India";    
     // country = string'(7'h31);    
      place = "Kashmir";
  
      m.put(country);
      m.put(place);
      $display("Transmitter: Country = %0s , must visit place = %0s",country,place);
  
      country = "South Africa";
      place = "Cape Town";
      m.put(country);
      m.put(place);
      $display("Transmitter: Country = %0s , must visit place = %0s",country,place);

      country = "Spain";
      place = "Barcelona";
      m.put(country);
      m.put(place);
      $display("Transmitter: Country = %0s , must visit place = %0s",country,place);

  endtask

endclass:A


//Receiver
class B;

  string country;
  string place;
  mailbox #(string) m;
   
  function new(mailbox m2);
   
    this.m = m2;
   
  endfunction

  task rec_data();
   
       m.get(country);
       m.get(place);
       $display("Receiver: Country = %0s , must visit place = %0s",country,place);

        m.get(country);
        m.get(place);
        $display("Receiver: Country = %0s , must visit place = %0s",country,place);

        m.get(country);
        m.get(place);
        $display("Receiver: Country = %0s , must visit place = %0s",country,place);
      endtask

 endclass:B


module  tb();

  A a1;
  B b1;
  int i;
  mailbox #(string) main = new(6);
  initial begin:BEGIN_MAIN


    a1= new(main);
    b1 = new(main);

    $display("");
    $display("");
    a1.tra_data();
    $display(".......................................................................");
    
    b1.rec_data();
  

  end:BEGIN_MAIN

  endmodule:tb


