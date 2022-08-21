// if- else control statement - if -else is the basic control statements 
  // In this , we can compare two conditions.
  // for example - we are comparing two no.s

  module if_else;
 logic[3:0]  a,b;


  initial begin 
    a = 5;
    b = 10;

    
    if (a<b)
      $display("b is greater");
     else
        $display("b is smaller");
      end 
      endmodule 
