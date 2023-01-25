module implicit_bin;

  bit [2:0] a;

  covergroup cov_grp;
    c1 : coverpoint a; 
  
  endgroup
  
  cov_grp cg = new();

  initial
  begin
    for(int i=1;i<=5;i++)
      begin
        a=$random();
        cg.sample();
        $display("a=%d,coverage = %.2f %%",a,cg.get_inst_coverage());
      end
  end      
endmodule
