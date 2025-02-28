// Memory block class to divide memory into variable-sized partitions
class memory_block;
    bit [31:0] mem_ram_start, mem_ram_end;   // Start and end addresses of RAM
    rand int mem_num_parts;                  // Number of partitions
    rand int mem_part_size[];                 // Array for partition sizes
    rand bit [31:0] mem_part_start[];         // Array for partition start addresses

    // Constraint: The number of partitions should be between 2 and 8
    constraint parts {
        mem_num_parts >= 2;
        mem_num_parts <= 8;
    }

    // Constraint: Ensure partition sizes sum up to the total memory size
    constraint part_sizes {
        mem_part_size.size() == mem_num_parts;                   // Ensure correct array size
        mem_part_size.sum() == mem_ram_end - mem_ram_start + 1;  // Sum of partition sizes must match RAM size
        
        // Each partition size should be a power of 2 from a predefined set
        foreach (mem_part_size[i])
            mem_part_size[i] inside {16, 32, 64, 128, 256, 512, 1024, 2048, 4096};
    }

    // Constraint: Ensure correct memory partitioning with consecutive addresses
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
        $display("\t RAM start addr : %0d ", mem_ram_start);
        $display("\t RAM end addr : %0d ", mem_ram_end);
        $display("\t No of Partitions : %0d ", mem_num_parts);
        $display("\n\t -----------Partitions-----------");

        // Display each partition's start, size, and end addresses
        foreach (mem_part_start[i]) begin
            if (i == mem_num_parts - 1)  // Last partition extends to RAM end
                $display("\t Partition : %0d with size : %0d from %0d to %0d ", 
                          i, mem_part_size[i], mem_part_start[i], mem_ram_end);
            else  // Other partitions have defined start and end addresses
                $display("\t Partition : %0d with size : %0d from %0d to %0d ", 
                          i, mem_part_size[i], mem_part_start[i], mem_part_start[i + 1] - 1);
        end
    endfunction
endclass

// Module to instantiate and test memory partitioning
module memory_n_var_partitions();
    memory_block memb = new();  // Create an instance of memory_block

    initial begin
        memb.mem_ram_start = 32'h0;     // Set RAM start address
        memb.mem_ram_end = 32'h3fff;    // Set RAM end address

        void'(memb.randomize());  // Randomize partition sizes and addresses
        void'(memb.display());    // Display partition details
    end
endmodule

