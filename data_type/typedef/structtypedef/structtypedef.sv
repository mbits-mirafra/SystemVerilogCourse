//typedef with structure  
module structtype;

//Declaring structure members
typedef struct {   
	string name;
	byte id;
      longint age;
	
}personal_details;   //structure_name

//structure name variable  
personal_details details;

initial begin

//Initializing the values to structure members
details = '{"Melbin", 23 ,22 };

//Displaying the values of members.  
$display("\n typedef structure example");          
$display("\n details = %p" ,details);  
$display("");

end 
endmodule:structtype

