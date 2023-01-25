module cover_point();
bit [3:0] a;
bit [3:0] arr[4]='{2,5,0,12};

covergroup cg; //created covergroup cg 
  a1:coverpoint a; //declared coverpoint a1
endgroup

cg cg_inst; //instatiated covergroup cg

initial begin
  cg_inst = new();
  foreach(arr[i]) begin
    a=arr[i]; //assigning array values to a
    cg_inst.sample(); //sampling the covergroup
    $display("a=%d coverage %%=%0.2f",a,cg_inst.get_inst_coverage());
  end
end
endmodule:cover_point
