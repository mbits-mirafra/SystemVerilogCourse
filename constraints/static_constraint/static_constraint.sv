// Class with a non-static constraint  
class class1;  
  rand bit [2:0] value;  

  // Constraint: Forces 'value' to always be 1  
  constraint cons { value == 1; }  
endclass  

// Class with a static constraint  
class class2;  
  rand bit [2:0] value;  

  // Static constraint: Applies to all instances of this class  
  static constraint cons { value == 1; }  
endclass  

// Module to test static and non-static constraints  
module static_constraint();  
   
  // Create objects of class1 and class2  
  class1 object_1 = new();  
  class1 object_2 = new();  
  class2 object_3 = new();  
  class2 object_4 = new();  

  initial begin  
    // Disable constraint for object_1 (non-static constraint)  
    object_1.cons.constraint_mode(0);  
    $display("\t%c[1;31m----- Non-static constraint turned off only in object 1 -----%c[0m", 27, 27);  
    $display("\tConstraint: value must be 1");  

    // Randomize and display values for object_1 and object_2  
    for (int i = 1; i <= 3; i++) begin  
      void'(object_1.randomize());  
      void'(object_2.randomize());  
      #1 $display("\t[%0t] @ iteration: %0d -----> value in object_1: %0d  value in object_2: %0d",  
                  $time, i, object_1.value, object_2.value);  
    end  

    // Disable constraint for object_3 (static constraint)  
    object_3.cons.constraint_mode(0);  
    $display("\n\t%c[1;34m----- Static constraint turned off only in object 3 -----%c[0m\n", 27, 27);  
    $display("\tConstraint: value must be 1");  

    // Randomize and display values for object_3 and object_4  
    for (int i = 1; i <= 3; i++) begin  
      void'(object_3.randomize());  
      void'(object_4.randomize());  
      #1 $display("\t[%0t] @ iteration: %0d -----> value in object_3: %0d  value in object_4: %0d",  
                  $time, i, object_3.value, object_4.value);  
    end  
  end  
endmodule : static_constraint  

