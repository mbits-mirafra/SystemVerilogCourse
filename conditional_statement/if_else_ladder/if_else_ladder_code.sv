/*If_else code

Syntax: if and else condition
  if(<condition>) 
  begin
    ...
  end
  else if(<conditions>)
  begin
    ...
  end
  else
  begin
    ...
  end

  */

 module if_else_ladder;

 int a = 10,
     b = 20;

     initial begin
   //  declaring the int data_type and variables are a,b;
   //if conditions
     if(a>b)
   
       //using $display to displaying in the output
    
       $display("a is greater than b");
  
       else if(a<b)
       
         //using $display to displaying in the output
 
        $display("a is less than b");
      
         else
           //using $display to displaying in the output
        
          $display("a is equall to b");
     end 
 endmodule :if_else_ladder
