//-------------------------------------------------------
//Constant class properties:
//Instance-class:
//Here we assign 'a' as the constant value using 'const' keyword
//But here we can assign the value in any function but that function should be in 
//the class.
//-------------------------------------------------------
//-- class 1 ---
class data;
  const int a;
  string b;
  function new();
    a=5;
    b="bhavana";
  endfunction:new
   function void display();
     $display("a=%0d,b=%0d",a,b);
   endfunction:display
 endclass:data

//---- class 2 ---
 class pack;
   int c;
   int d;
   data dt;
   function new();
     c=3;
     d=4;
     dt=new();//class handle
   endfunction:new
   function void display();
    $display("c=%0d,d=%0d,a=%0d,b=%0d",c,d,dt.a,dt.b);
  endfunction:display
endclass:pack


 module tb;
 pack t1;
 pack t2;
 initial begin:BEGIN_I
 t1=new();
 //t1.a=2;
 ////--------------------------------------------------------------------------------------------
 //Here we should not assign value for the 'a' because we declared the 'a' as constant variable. 
 //so if we assign any value to the 'a' it throws errors it won't take any value eventhough we 
 //declared.
 //--------------------------------------------------------------------------------------------
 t1.dt.b="team";
 t1.display();
 t2= t1;//class_assignment
 t2.d=7;
 t2.display();
 t2.c=8;
 t2.d=0;
 t2.dt.b="BJT";
 t1.display();
 t2.display();
 end:BEGIN_I
 endmodule:tb


 

