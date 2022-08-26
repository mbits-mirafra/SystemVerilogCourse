//--------------------------------------------------------------------------------------------
// syntax : unique case(item)
//          case_expr1 : begin statements; end
//          case_expr2 : begin statements; end
//          case_expr3 : begin statements; end
//          default: begin statements; end
//          endcase
//
// This is similar to case but reports warning when 
// multiple expressions match with item or no expression matches
//--------------------------------------------------------------------------------------------
module unique_case();
  
  int i,j;
  initial 
  begin
    j=1;
   #2 $finish; // This will stop/halt the execution process 
  end

  always  // for every one 1 time cycle i will be incremented by 1
  begin
    #1 i++;
  end;
  
  always @(i) 
  begin
    unique case(i)
      32'd1 : begin $display("[%0t] case value is %0d",$time,i);end
      32'd1 : begin $display("[%0t] case value is %0d",$time,i);end
      32'd2 : begin $display("[%0t] case value is %0d",$time,i);end
      //default:begin $display("[%0t] default case",$time);end
    endcase
  end
  
  always @(j) 
  begin
    unique case(j)
      32'd11 : begin $display("[%0t] case value is %0d",$time,j);end
      32'd12 : begin $display("[%0t] case value is %0d",$time,j);end
      32'd13 : begin $display("[%0t] case value is %0d",$time,j);end
      //default:begin $display("[%0t] default case",$time);end
    endcase
  end
endmodule
