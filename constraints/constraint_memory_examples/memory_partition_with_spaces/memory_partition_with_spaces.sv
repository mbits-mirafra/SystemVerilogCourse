class memory_block;
  
  bit [31:0] mem_ram_start,mem_ram_end;

  rand int mem_num_parts,mem_part_size[],mem_space[];
  rand bit [31:0] mem_part_start[];

  constraint parts {mem_num_parts>4;
                    mem_num_parts<10;}


  constraint part_sizes {mem_part_size.size()==mem_num_parts;
                         mem_space.size()==mem_num_parts-1;
                         mem_part_size.sum()+mem_space.sum()==mem_ram_end-mem_ram_start+1;
                         foreach(mem_part_size[i])
                         {
                            mem_part_size[i] inside {256,512,1024,2048};
                            if(i<mem_space.size())
                              mem_space[i] inside {64,256,512,1024};
                          }
                         }
  constraint partition {mem_part_start.size()==mem_num_parts;
                        foreach(mem_part_start[i])
                        if(i)
                         mem_part_start[i]==mem_part_start[i-1]+mem_part_size[i-1];
                        else
                         mem_part_start[i]==mem_ram_start;}
  function void display();
    $display("\tRAM start addr : %0d ",mem_ram_start);
    $display("\tRAM end addr : %0d ",mem_ram_end);
    $display("\tNo of Partitions : %0d ",mem_num_parts);
    $display("\tmem_part_size : %0p",mem_part_size);
    $display("\tmem_space : %0p",mem_space);
    $display("\n\t %c[1;32m-----------%c[1;34mpartitions%c[1;32m------------%c[0m",27,27,27,27);
    foreach(mem_part_start[i])
    begin
      if(i==mem_num_parts-1)
      $display("\t%c[0;34m Partition : %0d with size :%0d from %0d to %0d %c[0m\n"
      ,27,i,mem_part_size[i],mem_part_start[i]+mem_space[i-1],mem_ram_end,27);
      else if(i==0)
        $display("\t%c[0;34m Partition : %0d with size :%0d from %0d to %0d %c[1;31m\
        \n\t\tspace_part : %0d bytes ",27,i,mem_part_size[i],mem_part_start[i],
        mem_part_start[i+1]-1,27,mem_space[i]);
      else
         $display("\t%c[0;34m Partition : %0d with size :%0d from %0d to %0d %c[1;31m\
         \n\t\tspace_part : %0d bytes",27,i,mem_part_size[i],
         mem_part_start[i]+mem_space[i-1],mem_part_start[i+1]-1,27,mem_space[i]);
      end
endfunction
endclass


module memory_partition_with_spaces();
    memory_block memb=new();
  initial
  begin
    memb.mem_ram_start=32'h0;
    memb.mem_ram_end=32'h23ff;
    void'(memb.randomize()with{mem_num_parts==5;});
    void'(memb.display());
end
endmodule
