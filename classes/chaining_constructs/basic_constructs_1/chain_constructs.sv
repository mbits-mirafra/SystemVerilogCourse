//--------------------------------------------------------------------------------------------
// Chaining Constructs:-
//
// Constructor:-
//
// The function new() is called a class constructor.
// This constructor is used to create objects for class handle.
// Creating an object means we are allocating some memory to that class.
//
// Chaining constructor means when we are extending the child class from parent class 
// then all the properties and methods from parent class will be comming into child class.
// you can use same methods in both parent and child class then the child class 
// will overwrite the methods of parent class.
//
// But in the case of new() function you can use the same new() in both parent and child class 
// but there is no point of overwriting the parent class new().
// By default the simulator will call the super.new() statement insid the extended class this is 
// only happening in new() method.
//--------------------------------------------------------------------------------------------


//-------------------------------------------------------
// parent class having 1 properties and 2 methods.
// methods include new() and display().
//-------------------------------------------------------
class parent;
  int a;
  function new();
    a = 1;
  endfunction
  extern function void display();
endclass:parent

//-------------------------------------------------------
// child class which is extended form parent class
//-------------------------------------------------------
class child extends parent;
  int b;
  function new();
    b = 2;
  endfunction
  extern function void display();
endclass:child

//-------------------------------------------------------
// This is display function of parent class which is
// out-of-bound decleration.
//-------------------------------------------------------
function void parent::display();
  $display("a = %0d",a);
endfunction

//-------------------------------------------------------
// This is display function of child class which is
// out-of-bound decleration.
//-------------------------------------------------------
function void child::display();
  super.display(); // Super is a keyword used to get the method of same name from extended class.
  $display("b = %0d",b);
endfunction

module basic_chain_construct();

// creating a child class handle 'c'.
child c;

initial begin
  // creating an object for that handle 'c' using new() method.
  c = new;
  c.display(); // using that handle calling display function.
end

endmodule:basic_chain_construct
