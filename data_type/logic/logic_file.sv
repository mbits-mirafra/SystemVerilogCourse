//4 state data type is called logic
//4 states are 0,1,X,Z
//Default value of logic is X

module logic_data;

//Declaring logic data type
logic [2:0] data;

initial begin

// Displaying the value of logic data type(default)
  $display("data=%b",data);

// Initialising the value for logic data type
  data=3'b101;

// Displaying the value of logic data type after initialising the value
   $display("data=%b",data);

 end
 endmodule
