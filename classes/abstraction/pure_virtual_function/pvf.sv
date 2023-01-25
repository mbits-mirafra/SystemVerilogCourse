//--------------------------------------------------------------------------------------------
//
//pure virtual methods:
//
//A virtual method inside an abstract class can be declared by keyword 'pure' and 
//is called pure virtual method. The class will automatically consider it as abstract 
//class if any pure virtual method is used
//--------------------------------------------------------------------------------------------
virtual class A;
  int a,b,c;
  pure virtual function void disp();
  pure virtual task sum();
                    
endclass:A
                       
class B extends A;

  virtual function void disp();
    a =10;
    $display("1.Value of a = %0d, b = %0d, c = %0d",a,b,c);
  endfunction:disp

  virtual task sum();
   c = a+b;
   $display("2.Value of a = %0d, b = %0d, c = %0d",a,b,c);
  endtask:sum
                                               
endclass:B
                                                 
module pure_vir_fun_ex();
                                                   
  B b1;
  initial begin
    b1 = new;
    b1.disp();
    b1.b = 35;
    b1.sum;
  
  end
                                                                                         
endmodule:pure_vir_fun_ex
