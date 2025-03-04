//declare package
package one;
  //declare variables
  int a;
  string k;

  //declare class inside package
  class details;
    //declare class properties
    int age;
    string name;
    //declare class cunstruct
    function new(int a,string b);
      //assigning age and name using argument variables
      age=a;
      name=b;
    endfunction
    //printing name and age
    function void getdetails();
      $display("name is  %0s",name," ,age is %0d",age);
    endfunction
    //declare task and display method
    task t1;
      $display("it is in task of class");
    endtask: t1
    //declare void function and printing hi
    function void hi;
      $display("hi");
    endfunction
  endclass
  //declare function inside package
  function void pack_func;
    //declare clas handle
    details d;
    //created object using new by passing argument
    d=new(40,"raj");
    //assigning class variables to package variable
    a=d.age;
    k=d.name;
    $display("in package function");
    $display("name given is %0s",k,", age is %0d",a);
  endfunction

  //declare task in package
  task pack_task;
    //declare variable a using input
    input int a;
    //asseiging string and it's output for this task
    output string k="it is odd";
    //if condition match it will assiging 'it is even' to k
    if(a%2==0)begin
      k="it is even";
    end
  endtask
endpackage : one
