//-------------------------------------------------------
//constant class properties:
//global_class
//In the below code we declare 'b' as global constant variable 
//using 'const'keyword.
//-------------------------------------------------------

//---class 1----
class data;
  string a;
  const int b=1;//global constant
  function new();
    a="team";
  endfunction:new
  function void display();
    $display("a=%0d,b=%0d",a,b);
  endfunction:display
endclass:data

//---class 2---
class pack;
  string c;
  int d;
  data ar;//class handle
  function new();
    c="static";
    d=4;
    ar =new();
  endfunction:new
  function void display();
    $display("\t c=%0d,\t d=%0d,\t a=%0d,\t b=%0d",c,d,ar.a,ar.b);
  endfunction:display
endclass:pack

module global_class;
pack p1;
pack p2;
initial begin:BEGIN_I
  p1=new();
  p1.display();
 // p1.b=2;// invalid usage of b
  //-------------------------------------------------------
  //Here we assigned the b value in class properties using 'const' again we
  //should not assign the value for 'b' even though we declared the values it throws the 
  //errors.
  //-------------------------------------------------------
  p2= new p1;//shallow copy
  p2.display();
  p2.ar.a="BJT";
  //p2.ar.b=8;
  p2.d=5;
  p2.c="TEAM";
  p1.display();
  p2.display();
end:BEGIN_I
endmodule:global_class
