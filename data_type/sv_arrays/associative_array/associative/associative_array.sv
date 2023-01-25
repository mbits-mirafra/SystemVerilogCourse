// module declaration for associative array
module associative_array ();

// Declare an associative array as_mem of type int and index type int
  int abc[*]; 
  string pqr[string];

  initial begin
    $display("");
    $display("// associative array example");
    $display("");
    // initialize each dynamic array with values
    abc = '{ 1 : 20 , 25 : 22 , 38 : 66};
    pqr = '{ "fruits" : "mango" , "vegetables" : "cucumber" , "season" : "monsoon"};

    // printing both array values
    $display("// this int type associative arrays contains int type index");
    $display("abc = %p",abc);
    $display("");
    $display("// this string type associative arrays contains string type index");
    $display("pqr = %p",pqr);
    $display("");
  end

endmodule : associative_array

