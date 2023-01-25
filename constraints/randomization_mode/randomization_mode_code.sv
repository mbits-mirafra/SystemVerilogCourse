class packet;
  rand bit [2:0]data1;
  randc bit [1:0]data2;
  int state;
  function rand_mode1(int a);
    if(a==0)
    begin
      rand_mode(a);
      state = a;
    end
    else if(a==1)
    begin
      rand_mode(a);
      state = a;
    end
  endfunction
endclass

module randomization_mode;
  packet pkt = new();
  int c;
  initial begin
    $display("Before Randomization data1 = %0d data2= %0d",pkt.data1,pkt.data2);
    
    if(pkt.data1.rand_mode())
      if (pkt.data2.rand_mode())
        pkt.state = 1;
        $display("randomization of all variables are enabled");

        for(int i = 0;i<5;i++)
        begin
          c = pkt.randomize();
          $display("[%0d] After enable the randomizations data1 =%0d, data2 = %0d",i,pkt.data1,pkt.data2);
          $display("[%0d] state = %0d",i,pkt.state);
          if(i==3)
          begin
            pkt.rand_mode1(0);
            $display("[%0d] state = %0d",i,pkt.state);
          end
          $display("[%0d] After disable in the randomization data1 =%0d, data2 = %0d",i,pkt.data1,pkt.data2);
        end
      end
endmodule 
