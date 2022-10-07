module wildcard_bin;

  bit [0:3] a;
  bit [0:3] values[$]= '{4'b1000,4'b1001,4'b1010,4'b1011};

covergroup cov_grp;
  c1 : coverpoint a {
                    wildcard bins b1 ={4'b100x};
                    wildcard bins b2 ={4'b101x};
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
