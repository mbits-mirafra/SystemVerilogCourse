// continue statement is used to skip the current iteration of a loop.
//
// Syntax: loop
//         begin
//
//         continue;


 // In the following loop continue is used at  index2 
 //so that the loop skips that particular iteration at index2
 // and goes for next iteration.
module continue_sv;

  int array[5];

    initial 
        begin
foreach(array[i])
    begin
      if(i==2)begin
        $display("-----Calling Continue----");
        continue;
      end
        else
          array[i]=i;
          $display("array[%0d]=%0d",i,array[i]);
        end
      end
      endmodule
