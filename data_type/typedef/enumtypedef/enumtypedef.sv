
//typedef with enum datatype
module enumtype;

//Use typedef to create enum type
typedef enum {RORITO, FLAIRFX, REYNOLDS} e_pen;

initial begin

//Create  a variable use as enum datatype
e_pen pen;
pen = RORITO;

//displaying the value of pen
$display("\n typedef enum example");
$display("\n pen = %s",pen);
$display("");

end
endmodule:enumtype


