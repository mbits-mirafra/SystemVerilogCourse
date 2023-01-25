class without_solve_before;
  
  rand bit value1;
  rand bit [3:0] value2;
  
  constraint val {value1==1 -> value2==1;}

                  function void post_randomize();
                     if(value1==1)
                       $write("%c[1;31m",27);
                       else
                        $write("%c[0m",27);
                  endfunction
endclass

class with_solve_before;
  
  rand bit value1;
  rand bit [3:0] value2;
  
  constraint valu {value1==1 -> value2==1;
                  solve value1 before value2;}

                  function void post_randomize();
                     if(value1==1)
                       $write("%c[1;31m",27);
                       else
                        $write("%c[0m",27);
                  endfunction

endclass

module solve_before();

   without_solve_before gen1 = new();
   with_solve_before gen2 = new();

  initial
  begin
    $display("\t------Without solve before----------");
    for(int i=1;i<=32;i++)
    begin
        void'(gen1.randomize());
        #1 $display("\t[%0t] @ iteration: %0d -----> value1: %0d \t value2: %0d%c[0m",$time,i,gen1.value1,gen1.value2,27);
    end
    $display("\n\t -----with solve before--------");
    for(int i=1;i<=10;i++)
    begin
        void'(gen2.randomize());
        #1 $display("\t[%0t] @ iteration: %0d -----> value1: %0d \t value2: %0d%c[0m",$time,i,gen2.value1,gen2.value2,27);
    end

  end

endmodule : solve_before
