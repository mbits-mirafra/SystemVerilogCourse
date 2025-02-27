//interface is a bundle of signals or nets through which
//a testbench communicates with a design.

//Interface module for and gate
interface and_if;
  //declare the variables as in design code
  logic input_a, input_b;
  logic output_y;
endinterface:and_if

