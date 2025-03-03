//--------------------------------------------------------------------------------------------
//A semaphore allows you to control access to a resource.
//With help of semaphore method new() we create a semaphore keys
//and help of get method we take a keys from semaphore and if keys are not available
//in semaphore then it block the next statment but if we use try_get then if 
//keys are not availble but it execute the next statement
//--------------------------------------------------------------------------------------------
module semaphore_exa_get_try;

  // Create a semaphore with 1 key (representing a car key)
  semaphore car_key = new(1);

  initial begin : BEGIN_I

    fork

      // ......................Process-1 (Person A)...................................

      begin : BEGIN_I_FORK
        $display("Person A Waiting for car, time=%0t", $time);
        car_key.get(1);  // Person A waits and takes the car key
        $display("Person A Got the car, time=%0t", $time);
        #10;
        car_key.put(1);  // Person A returns the car key
        $display("Person A Returning back car, time=%0t", $time);
      end : BEGIN_I_FORK

      // ......................Process-2 (Person B)...................................

      begin : BEGIN_II_FORK
        #1;
        $display("Person B Waiting for car, time=%0t", $time);
        void'(car_key.try_get(1));  // Person B tries to get the car key, but does not block
        $display("Person B Got the car, time=%0t", $time);
        #10;
        car_key.put(1);  // Person B returns the car key
        $display("Person B Returning back car, time=%0t", $time);
      end : BEGIN_II_FORK

    join

  end : BEGIN_I

endmodule : semaphore_exa_get_try

