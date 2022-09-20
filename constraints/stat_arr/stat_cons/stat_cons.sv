
class class_1;
  rand bit [4:0]a[2:0][3:0];
  constraint b{foreach (a[i,j])    // standard way to represent multidimensional array using 
              a[i][j]<12;}           //foreach conditional statement 
              
    endclass

module mod;

    class_1 pack;
    initial begin 
      $display ("Randomization of multidimensional array");
      $display ("----------------------------------------");
      pack=new();
      $display ("Before randomization");
      $display (" Array = %0p",pack.a); // gives default value of data types .
      $display ("-----------------------------------------------------------");  
      $display ("After randomization");
      void'(pack.randomize());
      for (int i =0;i<=5;i++)begin
        void'(pack.randomize());
        $display (" Iteration = %0d, Array = %0p",i,pack.a);
        $display ("-----------------------------------------------------------");
      end 
    end 
    endmodule

