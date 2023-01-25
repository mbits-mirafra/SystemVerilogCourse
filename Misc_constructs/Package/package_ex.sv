package one;
  int a;
  string k;

  class details;
    int age;
    string name;
    function new(int a,string b);
      age=a;
      name=b;
    endfunction
    function void getdetails();
      $display("name is  %0s",name," ,age is %0d",age);
    endfunction
    task t1;
      $display("it is in task of class");
    endtask: t1
    function void hi;
      $display("hi");
    endfunction
  endclass

  function void pack_func;
    details d;
    d=new(40,"raj");
    a=d.age;
    k=d.name;
    $display("in package function");
    $display("name given is %0s",k,", age is %0d",a);
  endfunction

  task pack_task;
    input int a;
    output string k="it is odd";
    if(a%2==0)begin
      k="it is even";
    end
  endtask
  endpackage : one
