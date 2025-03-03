//--------------------------------------------------------------------------------------------
// Here we are calling a function and ignoring the return value by using keyword void
// syntax : void'(function_name(arguements));
//--------------------------------------------------------------------------------------------
module func_return_void;

  initial begin
    display("----output for function void return type-----");
    display("passing string to function for displaying");
    display("system_verilog");
  end
  //--------------------------------------------------------------
  // Writing the definition of the function using void return type.
  //--------------------------------------------------------------
  function void display(string str);
    //printing only string
    $display("\t%s",str);
  endfunction : display

endmodule : func_return_void
