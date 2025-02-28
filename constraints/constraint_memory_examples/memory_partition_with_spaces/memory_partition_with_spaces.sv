// Memory block class to divide memory into variable-sized partitions with spaces in between
class memory_block;
    bit [31:0] mem_ram_start, mem_ram_end;   // Start and end addresses of RAM
    rand int mem_num_parts;                  // Number of partitions
    rand int mem_part_size[];                 // Array for partition sizes
    rand int mem_space[];                     // Array for spaces between partitions
    rand bit [31:0] mem_part_start[];         // Array for partition start addresses

    // Constraint: The number of partitions should be between 5 and 9
    constraint parts {
        mem_num_parts > 4;
        mem_num_parts < 10;
    }

    // Constraint: Ensure partition sizes and spaces sum up to the total memory size
    constraint part_sizes {
        mem_part_size.size() == mem_num_parts;                   // Ensure partition size array matches number of partitions
        mem_space.size() == mem_num_parts - 1;                   // Space array should be one less than partition count
        mem_part_size.sum() + mem_space.sum() == mem_ram_end - mem_ram_start + 1; // Total memory usage must match RAM size
        
        // Each partition size should be from a predefined set
        foreach (mem_part_size[i]) {
            mem_part_size[i] inside {256, 512, 1024, 2048};
            if (i < mem_space.size()) 
                mem_space[i] inside {64, 256, 512, 1024}; // Spaces between partitions should be from a predefined set
        }
    }

    // Constraint: Ensure proper memory partitioning with consecutive addresses
    constraint partition {
        mem_part_start.size() == mem_num_parts;  // Ensure start address array matches number of partitions
        foreach (mem_part_start[i])
            if (i)
                mem_part_start[i] == mem_part_start[i - 1] + mem_part_size[i - 1];  // Next partition starts after the previous one
            else
                mem_part_start[i] == mem_ram_start;  // First partition starts at RAM start address
    }

    // Function to display memory partition details
    function display();
        $display("\tRAM start addr : %0d ", mem_ram_start);
        $display("\tRAM end addr : %0d ", mem_ram_end);
        $display("\tNo of Partitions : %0d ", mem_num_parts);
        $display("\tmem_part_size : %0p", mem_part_size);
        $display("\tmem_space : %0p", mem_space);
        $display("\n\t %c[1;32m-----------%c[1;34mpartitions%c[1;32m------------%c[0m", 27, 27, 27, 27);

        // Display each partition's start, size, and end addresses, including spaces
        foreach (mem_part_start[i]) begin
            if (i == mem_num_parts - 1)  // Last partition extends to RAM end
                $display("\t%c[0;34m Partition : %0d with size :%0d from %0d to %0d %c[0m\n",
                          27, i, mem_part_size[i], mem_part_start[i] + mem_space[i - 1], mem_ram_end, 27);
            else if (i == 0)  // First partition
                $display("\t%c[0;34m Partition : %0d with size :%0d from %0d to %0d %c[1;31m\n\t\tspace_part : %0d bytes ",
                          27, i, mem_part_size[i], mem_part_start[i], mem_part_start[i + 1] - 1, 27, mem_space[i]);
            else  // Intermediate partitions with space
                $display("\t%c[0;34m Partition : %0d with size :%0d from %0d to %0d %c[1;31m\n\t\tspace_part : %0d bytes",
                          27, i, mem_part_size[i], mem_part_start[i] + mem_space[i - 1], mem_part_start[i + 1] - 1, 27, mem_space[i]);
        end
    endfunction
endclass

// Module to instantiate and test memory partitioning
module memory_partition_with_spaces();
    memory_block memb = new();  // Create an instance of memory_block

    initial begin
        memb.mem_ram_start = 32'h0;     // Set RAM start address
        memb.mem_ram_end = 32'h23ff;    // Set RAM end address

        void'(memb.randomize() with {mem_num_parts == 5;});  // Randomize partition sizes and spaces with 5 partitions
        void'(memb.display());    // Display partition details
    end
endmodule

