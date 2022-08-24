//4 state data type is called logic
//4 states are 0,1,X,Z
//Default value of logic is X

module logic_data;

//Declaring logic data type
logic [2:0]logic_data_type;

initial begin

// Displaying the value of logic data type(default)
$display("\nDefault value of logic data type =%b",logic_data_type);

// Initialising the value for logic data type
logic_data_type=3'b101;

// Displaying the value of logic data type after initialising the value
$display("\nValue of logic data type  after initialization =%b",logic_data_type);
$display("");
end
endmodule : logic_data
