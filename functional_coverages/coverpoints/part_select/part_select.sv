module part_select();
bit [2:0] a;

covergroup cg; //declared covergroup cg
  a1:coverpoint a[1:0]; //declared coverpoint a1 with 'a' has 2 bits from LSB
  a2:coverpoint a[0]; //declred coverpoint a2 only with LSB
  a3:coverpoint a[2:1]; //declared coverpoint a3 with 'a' has 2 bits from MSB
endgroup

cg cg_inst; //covergroup cg instatiation

initial begin
  cg_inst=new();
  for(int i=0;i<5;i++) begin
    a=$random; //assigning random value to 'a'
    cg_inst.sample(); //sampling the covergroup
    $display("a=%d a1=%b a2=%b a3=%b",a,a[1:0],a[0],a[2:1]);
    $display("\tcoverage %%=%0.2f",cg_inst.get_coverage());
  end
end
endmodule:part_select
