// Memory block class to divide memory into equal partitions
class memory_block;
    bit [31:0] mem_ram_start, mem_ram_end;  // Start and end addresses of RAM
    rand int mem_num_parts, mem_part_size;  // Number of partitions and size of each partition
    rand bit [31:0] mem_part_start[];       // Array to store start addresses of partitions

    // Constraint: The number of partitions should be between 2 and 8
    constraint parts {
        mem_num_parts >= 2;
        mem_num_parts <= 8;
    }

    // Constraint: Each partition should have an equal size
    constraint part_size {
        mem_part_size == (mem_ram_end - mem_ram_start) / mem_num_parts + 1;
    }

    // Constraint: Ensure proper partitioning with consecutive addresses
    constraint patition {
        mem_part_start.size() == mem_num_parts;  // Array size must match the number of partitions
        foreach (mem_part_start[i]) 
            if (i)
                mem_part_start[i] == mem_part_start[i - 1] + mem_part_size;  // Next partition starts after the previous one
            else
                mem_part_start[i] == mem_ram_start;  // First partition starts at RAM start address
    }

    // Function to display memory partition details
    function display();
        $display("\t RAM start addr : %0d ", mem_ram_start);
        $display("\t RAM end addr : %0d ", mem_ram_end);
        $display("\t No of Partitions : %0d ", mem_num_parts);
        $display("\t Size of each partition : %0d ", mem_part_size);
        $display("\n\t -----------Partitions----------- ");

        // Display each partition's start and end addresses
        foreach (mem_part_start[i]) begin
            if (i == mem_num_parts - 1)  // Last partition extends to RAM end
                $display("\t Partition : %0d from %0d to %0d ", 
                          i + 1, mem_part_start[i], mem_ram_end);
            else  // Other partitions are within allocated sizes
                $display("\t Partition : %0d from %0d to %0d ", 
                          i + 1, mem_part_start[i], mem_part_start[i + 1] - 1);
        end
    endfunction
endclass

// Module to instantiate and test memory partitioning
module memory_n_equal_partitions();
    memory_block memb = new();  // Create an instance of memory_block

    initial begin
        memb.mem_ram_start = 32'h0;   // Set RAM start address
        memb.mem_ram_end = 32'h7ff;   // Set RAM end address

        void'(memb.randomize());  // Randomize partitions
        void'(memb.display());    // Display partition details
    end
endmodule

