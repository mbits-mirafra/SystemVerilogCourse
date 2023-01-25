class generator;

  rand bit [2:0] value;
  constraint exp { value>2;}

endclass

module inline_constraint();

   generator gen = new();
  initial
  begin
      void'(gen.randomize());
      #1 $display("\t[%0t] @ iteration: 1  -----> value: %0d",$time,gen.value);
      void'(gen.randomize()with{value==7;});
      #1 $display("\t[%0t] @ iteration: 2  -----> value: %0d",$time,gen.value);
  end
endmodule
