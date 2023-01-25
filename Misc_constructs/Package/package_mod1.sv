import one::*;//importing package
module mod1;
string id1;
details emp1=new(21,"kumar");//instantiation of package class
initial begin
  string g;
  $display("details of id1 are : %0d",emp1.age);
  emp1.getdetails();
  emp1.t1();
  pack_func();
  pack_task(10,g);
  $display(g);
end
endmodule:mod1
