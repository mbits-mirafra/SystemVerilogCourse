// module declaration for associative array
module associative_method();

// Declare an associative array abc of type int and index type string
  int abc[string];
  string variable;
  string val1;

  initial begin
    $display("");
    $display("// associative array given below");
    // initialize each dynamic array with values
    abc = '{ "vadodara" : 10 , "ahmedabad" : 25 , "surendranagar" : 38 , "rajkot" : 55 ,
    "surat":48};

    // printing both array values
    $display("abc = %p",abc);

    // function num(): this function prints the number of items in array
    $display("");
    $display("// abc.num() - gives number of elements inside array");
    $display("// output of abc.num()");
    $display("%0d",abc.num());

    //function size(): this works same as num()
    $display("");
    $display("// abc.size() - returns size of array");
    $display("// output of abc.size()");
    $display("%0d",abc.size());

    // function exists(index): this function checks if the particular key exist in array or not
    $display("");
    $display("// abc.exists(index) - returns whether the particular index exists inside array or not");
    $display("// output of abc.exist(vadodara)");
    if(abc.exists ("vadodara")) begin
      $display("index vadodara exists in array");
    end
    else begin
      $display("index vadodara not exists in array");
    end

    // function first(variable): it will assign value of first index to variable
    $display("");
    $display("// abc.first(index) - returns the first index value in array");
    $display("// output of abc.first(variable)");
    if(abc.first(variable)) begin
      $display("abc[%s]=%0d",variable,abc[variable]);
    end

    // function last(variable): it will assign value of last index to variable
    $display("");
    $display("// abc.last(index) - returns the last index value in array");
    $display("// output of abc.last(variable)");
    if(abc.last(variable)) begin
      $display("abc[%s]=%0d",variable,abc[variable]);
    end

    // function next(index): it will give next index value which is greater than current index the 
    // in array
    $display("");
    $display("// abc.next(index) - gives next index value which is greater than current index"); 
    $display("// and it's corresponding value in array");
    $display("// output after abc.next(val1)");
    if(abc.next(val1)) begin
      $display("abc[%s]=%0d",val1,abc[val1]);
    end
    
    // function delete(index): it will delete index from the array
    $display("");
    $display("// abc.delete(index) - deletes the index and it's corresponding value in array");
    $display("// output after deleting surendranagar index in array");
    abc.delete("surendranagar");
    $display("%p",abc);
    $display("");
  end

endmodule : associative_method

