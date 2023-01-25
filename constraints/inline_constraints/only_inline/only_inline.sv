class generator;

  rand bit [2:0] value;

endclass

module only_inline();

   generator gen = new();
  initial
  begin
    for(int i=1;i<=2;i++)
    begin
      void'(gen.randomize()with{value==3;});
      #1 $display("\t[%0t] @ iteration: %0d -----> value: %0d",$time,i,gen.value);
    end
  end
endmodule
