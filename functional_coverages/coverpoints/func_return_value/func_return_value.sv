function bit[3:0] sum(int a, int b); //declared function sum
  int c;
  c=a+b;
  return c; //returning addition
endfunction

module func_return_value();
class val; 
  randc bit [1:0]a;
  randc bit [1:0]b;
endclass

int addition;

covergroup cg; //declared covergroup cg
  a: coverpoint v.a;
  b: coverpoint v.b;
  func: coverpoint sum(v.a,v.b); //calling function in coverpoint
endgroup

val v;
cg cg_inst;

initial begin
  v=new();
  cg_inst=new();

  repeat(5) begin
    void'(v.randomize()); //randomizing class variables

    addition=sum(v.a,v.b);
    cg_inst.sample(); //sampling the covergroup cg
    $display("a = %d, b = %d; add = %d",v.a,v.b,addition);
    $display("\tcoverage %%=%0.2f",cg_inst.get_inst_coverage());
  end
end
endmodule:func_return_value
