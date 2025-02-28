// Class definition with constraints on the random variable
class class1;
    rand bit[3:0] a;  // 4-bit random variable

    // Constraint: 'a' should be less than 10
    constraint con1 { a < 10; }

    // Constraint: 'a' should be greater than 10 (Conflicting constraint)
    constraint con2 { a > 10; }
endclass

// Module to test the randomization of class1
module mod;
    class1 cl;  // Create an instance of class1

    initial begin
        cl = new();  // Allocate memory for the object

        // Attempt to randomize the object
        if (cl.randomize()) begin
            $display("\t \n Randomization successful");
            $display("\t \n The randomized value of a = %0d", cl.a);
        end 
        else begin
            $display("\t \n Randomization failed due to conflicting constraints");
            $display("\t \n The value of a = %0d", cl.a);
            $display("-----------------------");
        end
    end
endmodule

