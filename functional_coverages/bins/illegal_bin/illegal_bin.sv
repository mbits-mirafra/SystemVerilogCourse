module illegal_bin;

  bit [0:1] a;
  bit [0:1] values[$]= '{0,1,2,3};

covergroup cov_grp;
  c1 : coverpoint a {
                    illegal_bins b1 ={2};
                   }
  
  endgroup
  
  cov_grp cg = new();
  initial
  begin
    foreach(values[i])
      begin
        a = values[i];
        cg.sample();
        $display("val=%d,cov = %.2f %%",a,cg.get_inst_coverage());
      end
  end 
endmodule
