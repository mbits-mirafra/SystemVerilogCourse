//typedef with structure  
module structtype;

//Declaring structure members
typedef struct {   
	string name;
	byte id;
      longint li;
	
}personal_details_s;   //structure_name

//structure name variable  
personal_details_s  details;

initial begin

//Initializing the values to structure members
details.name= "Melbin";
details.id = 23;
details.li = 22;


//Displaying the values of members.  
$display("\n typedef structure example");          
$display("\n details.name = %p" ,details.name); 
$display("\n details.id = %p" ,details.id);
$display("\n details.li = %p" ,details.li);


$display("\n Bitstream size of personal_details_s: %0d", $bits(details));
end 
endmodule:structtype

