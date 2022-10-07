module expression;
bit [1:0] a;
bit [2:0] b;

covergroup cg; //created covergroup cg
  a1:coverpoint a; 
  b1:coverpoint b;
  axb:coverpoint a*b; //created coverpoint a*b
endgroup:cg

cg cg_inst;

initial begin
  cg_inst = new();

  repeat(10) begin
    a=$random; //assigning random values to a
    b=$random; //assiging random values to b
    cg_inst.sample(); //sampling the covergroup
    $display("a=%d b=%d axb=%d coverage %%=%0.2f",a,b,a*b,cg_inst.get_inst_coverage());
  end
end
endmodule:expression

