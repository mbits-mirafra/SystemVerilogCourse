// module declaration for associative array
module associative_array ();

// Declare an associative array abc of type int with integer keys
int abc[*];  
// Declare an associative array pqr of type string with string keys
string pqr[string];  
  initial begin
    $display("");
    $display("// associative array example");
    $display("");
    // Initialize the integer associative array with key-value pairs
    abc = '{ 1 : 20 , 25 : 22 , 38 : 66};
    // Initialize the string associative array with key-value pairs
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

