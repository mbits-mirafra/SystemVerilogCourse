
//Concatenation operators are used to join different bits of data into one {}
module concatenation_code;

logic [0:3] a,b,c;
int x;

initial begin
  a = 1'b1;     // 1-bit value assigned to a 4-bit variable (only a[0] gets 1, others default to 0)
  b = 4'b1110;  // 4 bit binary values for the b variable
  c = 4'b1101;  // 4 bit binary values for the c variable

  $display("\n \t the value of a is %0d",a);
  $display("\n \t the value of b is %0b",b);
  $display("\n \t the value of c is %0b",c);


  //Concatenation Operator: Combines a, b, and c into a single variable**
  x = {a,b,c};

  $display("\n \t the output a,b,c of Concatenation operators output is %0b",x);
  #10; // Delay of 10 time units

  // Replication Operator: Repeats 'c' 3 times and concatenates with 'a' and 'b'
  x= {a,b,{3{c}}};
  $display("\n \t the output a,b,3c of Replicates operators output is %0b",x);

end
endmodule 
