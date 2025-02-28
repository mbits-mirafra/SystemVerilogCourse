// Memory block class to allocate memory for programs, data, and spaces
class memory_block;
    int total_mem;                          // Total memory size
    rand int pgm[], data[], space[];        // Arrays for program sizes, data sizes, and spaces
    rand int max_pgms, max_pgm_size, max_data_size;  // Maximum limits for programs and data
    rand int num_pgm, num_data, num_space;  // Number of programs, data blocks, and spaces

    // Constraint: Define the valid number of programs, data blocks, and spaces
    constraint nums {
        num_pgm inside {[1:max_pgms]};
        num_data inside {[1:10]};
        num_space inside {[1:10]};
    }

    // Constraint: Define maximum values for programs and data
    constraint maxs {
        max_pgms == 10;
        max_pgm_size == 512;
        max_data_size == 128;
    }

    // Constraint: Ensure array sizes match their respective counts
    constraint arrays {
        pgm.size() == num_pgm;
        data.size() == num_data;
        space.size() == num_space;
    }

    // Constraint: Define valid memory allocation rules
    constraint ram {
        foreach (pgm[i]) {
            pgm[i] dist {[128:512]:=75, [32:64]:/20};  // Programs mostly between 128-512, some between 32-64
            pgm[i] % 4 == 0;  // Programs must be aligned to 4-byte boundaries
        }

        foreach (data[i]) {
            data[i] inside {64};  // Each data block must be exactly 64 bytes
        }

        foreach (space[i]) {
            space[i] inside {64, 128, 512};  // Allowed space sizes
        }

        total_mem == pgm.sum() + data.sum() + space.sum();  // Total memory must match allocated sum
    }

    // Function to display memory allocation details
    function void display();
        $display("\tTotal_RAM : %0d ", total_mem);
        $display("\tNo. of Programs : %0d ", num_pgm);
        $display("\tNo. of Data blocks : %0d ", num_data);
        $display("\tNo. of Spaces : %0d ", num_space);
        $display("\tTotal program size : %0d , Total data size : %0d , Total space size : %0d \n",
                  pgm.sum(), data.sum(), space.sum());

        foreach (pgm[i])
            $display("\t %c[1;32m Program_%0d is of %0d bytes %c[0m", 27, i, pgm[i], 27);
        foreach (data[i])
            $display("\t %c[1;33m Data_%0d is of %0d bytes %c[0m", 27, i, data[i], 27);
        foreach (space[i])
            $display("\t %c[1;34m Space_%0d is of %0d bytes %c[0m", 27, i, space[i], 27);
    endfunction
endclass

// Module to instantiate and test memory allocation
module memory_pgm_data();
    memory_block mb;

    initial begin
        mb = new();
        mb.total_mem = 6144;  // Set total memory size
        void'(mb.randomize());  // Randomize memory allocation
        mb.display();  // Display allocation details
    end
endmodule

