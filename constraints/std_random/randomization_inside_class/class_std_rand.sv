class test;
  int a;
  rand bit [2:0]b;
constraint c1 { a >= 2;a <= 9; }
 function void display();
  int c;
void'(std::randomize(this));
  $display("using std_randomize %0d ,%d",a,b);
   if (randomize(a))
     $display("randomize(a) %0d",a);
  if (std::randomize(a));       
     $display("using std_randomize(a) %0d",a);
  if(std::randomize(b))
    $display("using std_randomize b: %0d",b);
  if (std::randomize(c) with {c>1;
                            c<4;}) 
     $display("using std_randomize with constraint,c: %0d",c);
 void' (this.randomize());
      $display("this randomize %0d %d %d",a,b,c);

    endfunction
  
  endclass

 module tb;
test t;
 initial begin
  t=new(); 
repeat (3)
t.display();
end
endmodule

