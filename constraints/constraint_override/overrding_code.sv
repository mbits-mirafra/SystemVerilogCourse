//overriding code

class parent;
  rand byte a;
  rand byte b;

  constraint cons{a==0;b==5;}
endclass:parent

class child extends parent;
  constraint cons{a==5;b==8;}
endclass:child


module top;
  initial begin
  child t1;
  t1= new;
  for(int i=0;i<3;i++)
  begin
    if (!t1.randomize()) begin
            $display("Randomization failed");
          end
   else begin
   $display("\t \n Iteration : %0d ----> value of the a=%0d value of b=%0d",i,t1.a,t1.b);
end
end
end
endmodule:top
