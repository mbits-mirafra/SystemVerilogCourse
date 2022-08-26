//--------------------------------------------------------------------------------------------
// syntax : loop 
//          begin
//
//          continue;/break;
//
// These are only used inside the loops for user convinience to come
// out of the  loop entirely or user can skip a particular iteration  
//--------------------------------------------------------------------------------------------
module break_continue();

  int array[5];

  initial 
  begin
    //-------------------------------------------------------
    // In the following loop break is used at index 2 so that 
    // the loops stops at index 2 and comes out of loop.
    //-------------------------------------------------------
    foreach(array[i])
    begin
      if(i==2)
        break;
      else
        array[i]=i;
      $display("array[%0d]=%0d",i,array[i]);
    end
    //-------------------------------------------------------
    //  In the following loop continue is used at same index 
    //  so that the loop skips that particular iteration at index2
    //  and goes for next iteration.
    //-------------------------------------------------------
    foreach(array[i])
    begin
      if(i==2)
        continue;
      else
        array[i]=i;
      $display("array[%0d]=%0d",i,array[i]);
    end
  end
endmodule

