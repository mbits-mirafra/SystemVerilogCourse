
//Using typedef declare class fruit2 to avoid compile errors.
typedef class fruit2;

//class1 declaration
class fruit1; 
fruit2 f ;  // 	Without typedef fruit2 declaration cause compile error.
endclass

//class2 declaration 
class fruit2;
fruit1 f ;
endclass

module typedefclass;

initial begin
fruit1 class1;
fruit2 class2;

//Display the values
$display("\n typedef class example");
$display("\n fruit2 class usage with typedef to avoid compile error");
$display("");

end

endmodule:typedefclass
