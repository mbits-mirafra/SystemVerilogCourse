module set_of_trans_bin;

  bit [0:3] a;
  bit [0:2] values[$]= '{1,2,3,4,5};

covergroup cov_grp;
  c1 : coverpoint a {
                    bins tran_1 = (1,2=>3,4);
                    bins tran_2 = (3,4=>5);
                    bins tran_3 = (1,3=>4);
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
