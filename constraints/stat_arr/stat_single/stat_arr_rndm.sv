class static_array;
  randc byte  a[7];
endclass 

module stat_array;
static_array stat_arr;
initial begin 
stat_arr = new();

$display ("Static array - Size is already declare. So, we can only randomize ");

$display ("               the elements of it . ");
$display ("-------------------------------------------------------------------");
$display ("rand byte a[5];  // Data type is byte");
$display ("-------------------------------------------------------------------");
$display ("Before randomize the elements of arrayi 'a'");
$display ("Assign by default value of array data type.");
$display (" %0p", stat_arr.a);
void '(stat_arr.randomize ());
$display ("------------------------------------------------------------------");

$display ("After randomize the elements of array 'a'");

$display ("Output =  %0p ",stat_arr.a);
$display ("-------------------------------------------------------------------");
end 
endmodule 

