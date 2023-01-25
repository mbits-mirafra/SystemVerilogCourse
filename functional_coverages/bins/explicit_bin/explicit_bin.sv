module explicit_bin;

  bit [2:0] a;

  covergroup cov_grp;
    c1 : coverpoint a{
                      bins b1={2};
                      bins b2={3};
                    } 
  
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
