class memory_block;
  bit [31:0] mem_ram_start, mem_ram_end;       // Non-random variables to define RAM start and end addresses
  rand bit [31:0] mem_start_addr, mem_end_addr; // Random variables for memory block start and end addresses
  rand int mem_block_size;                      // Random variable for memory block size

  // Constraint for memory block addresses
  constraint mem {
    mem_start_addr >= mem_ram_start;            // Start address must be greater than or equal to RAM start address
    mem_start_addr < mem_ram_end;               // Start address must be less than RAM end address
    mem_start_addr % 4 == 0;                    // Start address must be aligned to a 4-byte boundary
    mem_end_addr == mem_start_addr + mem_block_size - 1; // End address is calculated based on start address and block size
  }

  // Constraint for memory block size
  constraint block_size {
    mem_block_size inside {32, 64};             // Block size must be either 32 or 64
  }

  // Function to display memory block details
  function void display();
    $display("\t----memory block----");
    $display("\t RAM start addr : %0d", mem_ram_start);
    $display("\t RAM end addr : %0d", mem_ram_end);
    $display("\t BLOCK start addr : %0d", mem_start_addr);
    $display("\t BLOCK end addr : %0d", mem_end_addr);
    $display("\t BLOCK SIZE:%0d", mem_block_size);
  endfunction
endclass

module single_memory_block();
  memory_block memb = new(); // Create an instance of the memory_block class

  initial begin
    // Initialize RAM start and end addresses
    memb.mem_ram_start = 32'h0;  // RAM starts at address 0
    memb.mem_ram_end = 32'h7ff;  // RAM ends at address 7ff (2047 in decimal)

    // Randomize memory block start address, end address, and block size
    void'(memb.randomize());

    // Display the memory block details
    memb.display();
  end
endmodule
