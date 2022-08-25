
//Using typedef declare class fruit2 to avoid compile errors.
typedef class fruit2;
class fruit1; 
fruit2 f ;
endclass

//class-fruit2   
class fruit2;
fruit1 f ;
endclass

module typedefclass;

initial begin
fruit1 class1;
fruit2 class2;

//Display the values
$display("\n typedef class example");
$display("\n fruit1 and fruit2");
$display("");

end

endmodule:typedefclass
