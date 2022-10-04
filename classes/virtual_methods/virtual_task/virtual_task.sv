//-------------------------------------------------------
//virtual task:
//Task declared with a virtual keyword before the task keyword
//is referred to as virtual task
//-------------------------------------------------------
//---class 1------
class packet;
  string a;
  int b;

    virtual task  display();
     a="Team";
     b=4;
     $display("a=%0s",a);
     $display("b=%0d",b);
    endtask 

 endclass//class 1

//-----class 2-------
class pack extends packet;
   string c;
   int d;

      task display();
       c="BJT";
       d=8;
       $display("c=%0s",c);
       $display("d=%0d",d);
      endtask

endclass//class 2

 packet p1;
 pack p2;

module virtual_task;

   initial begin:BEGIN_I

      p2=new();
      p1=p2;
      $display("contents of pp0");
      p1.display();

   end:BEGIN_I

 endmodule:virtual_task
