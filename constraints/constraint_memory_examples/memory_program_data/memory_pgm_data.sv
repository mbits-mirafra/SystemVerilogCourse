
class memory_block;
  
  int total_mem;

  rand int pgm[],data[],space[];
  rand int max_pgms,max_pgm_size,max_data_size;
  rand int num_pgm,num_data,num_space;

  constraint nums {num_pgm inside {[1:max_pgms]};
                   num_data inside {[1:10]};
                   num_space inside {[1:10]};}

  constraint maxs {max_pgms==10;
                   max_pgm_size==512;
                   max_data_size==128;}

  constraint arrays {pgm.size()==num_pgm;
                     data.size()==num_data;
                     space.size()==num_space;}

  constraint ram {foreach(pgm[i])
                      {
                        pgm[i] dist {[128:512]:=75,[32:64]:/20};
                         pgm[i]%4 ==0;
                           
                      }
                  foreach(data[i])
                    {
                       data[i] inside {64};
                    }
                  foreach(space[i])
                      {
                       space[i] inside {64,128,512};
                      }
                total_mem == pgm.sum()+data.sum()+space.sum();
                    }

  function void display();
    $display("\tTotal_RAM : %0d ",total_mem);
    $display("\tNo.of Programs : %0d ",num_pgm);
    $display("\tNo.of data's : %0d ",num_data);
    $display("\tNo.of space's : %0d ",num_space);
    $display("\tTotal_program_size : %0d , Total_data_size : %0d Total_space_size : %0d \n",pgm.sum(),data.sum(),space.sum());
    foreach(pgm[i])
      $display("\t %c[1;32m Program_%0d is of %0d bytes %c[0m",27,i,pgm[i],27);
    foreach(data[i])
      $display("\t %c[1;33m data_%0d is of %0d bytes %c[0m",27,i,data[i],27);
    foreach(space[i])
      $display("\t %c[1;34m space_%0d is of %0d bytes %c[0m",27,i,space[i],27);
  endfunction

endclass



module memory_pgm_data();
  
  memory_block mb;

  initial 
  begin

    mb =new();
    mb.total_mem=6144;
    void'(mb.randomize());
    mb.display();
  end

endmodule
