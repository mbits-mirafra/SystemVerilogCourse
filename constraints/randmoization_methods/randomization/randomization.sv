class generator;
  rand bit [2:0] value;
  constraint cons {value==5;}
endclass

module randomization();

   generator gen = new();
   int check;
  initial
  begin

      $display("\tCalling Randomize....");
      check=gen.randomize();
       $write("\tvalue: %0d ",gen.value);
      if(check)
        $display("\tRandomization successful");
      else
        $display("\tRandomization failed");
      
        $display("\tCalling Randomize....");

      check=gen.randomize()with{value==2;};
       $write("\tvalue: %0d ",gen.value);
      if(check)
        $display("\tRandomization successful");
      else
        $display("\tRandomization failed");
  end
endmodule
