//--------------------------------------------------------------------------------------------
// syntax : case(item)
//          case_expr1 : begin statements; end
//          case_expr2 : begin statements; end
//          case_expr3 : begin statements; end
//          default: begin statements; end
//          endcase
//
// If the item is match with the case_expr 
// only those statements were evaluated, 
// if there is no match then default is executed.
//--------------------------------------------------------------------------------------------
module case1();
  
  int i=0;
 
  initial 
  begin
   #10 $finish; // This will stop/halt the execution process 
  end

  always  // for every one 1 time cycle i will be incremented by 1
  begin
    #1 i++;
  end;
  
  always @(i) 
  begin
    case(i)
      32'd0 : begin $display("[%0t] case value is %0d",$time,i);end
      32'd1 : begin $display("[%0t] case value is %0d",$time,i);end
      32'd2 : begin $display("[%0t] case value is %0d",$time,i);end
      default:begin $display("[%0t] default case",$time);end
    endcase
  end
endmodule
