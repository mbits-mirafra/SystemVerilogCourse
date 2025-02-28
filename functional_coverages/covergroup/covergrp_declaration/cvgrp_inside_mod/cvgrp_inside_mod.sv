class pack;
  rand bit [1:0] a; // 2-bit random variable
  rand bit [2:0] b; // 3-bit random variable
endclass

module cvgrp_inside_mod;
  pack p; // Declare an instance of class 'pack'

  // Define covergroup with arguments (cannot directly use class members)
  covergroup cgrp(ref bit [1:0] a, ref bit [2:0] b);
    c1: coverpoint a; // Coverpoint for 'a'
    c2: coverpoint b; // Coverpoint for 'b'
  endgroup

  cgrp c; // Declare covergroup instance

  initial begin
    p = new();   // Instantiate class 'pack'
    c = new(p.a, p.b); // Instantiate covergroup, passing class variables as references

    repeat (5) begin
      void'(p.randomize()); // Randomize class variables

      c.sample(); // Manually sample coverage

      // Display values and current instance coverage percentage
      $display("a=%d ; b=%d ; coverage %%= %.2f%%", p.a, p.b, c.get_inst_coverage());
    end

    $finish; // Terminate simulation
  end
endmodule

