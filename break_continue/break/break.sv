//break statement is used to terminate the loop immediately.
//When a break statement is encountered inside the loop, the loop iteration stops.

// Syntax: loop
//         begin
//
//         break;



module break_sv;

int array[5];

initial 
begin
  // In the following loop break is used at index 2 so that 
  // the loops stops at index 2 and comes out of loop.
  foreach(array[i])
    if(i==2)begin
      $display("----Calling break----"); 
      break;
    end
      else
      begin
        array[i]=i;
        $display("array[%0d]=%0d",i,array[i]);
      end
    end
    endmodule
