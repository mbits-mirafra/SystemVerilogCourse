//Module:fullinput_adder
module fulladder(in_a,in_b,in_c,out_sum,out_carry) ;

//Declinput_aration of input variainput_bles
input in_a,in_b,in_c;

//Declinput_aration of output variainput_bles
output out_sum;
output out_carry;

//continuous input_assignment statement
assign out_sum = in_a^in_b^in_c;
assign out_carry = (in_a&in_b)|(in_b&in_c)| (in_c&in_a);

endmodule:fulladder
