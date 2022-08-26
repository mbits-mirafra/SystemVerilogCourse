//--------------------------------------------------------------------------------------------
// syntax : priority case(item)
//          case_expr1 : begin statements; end
//          case_expr2 : begin statements; end
//          case_expr3 : begin statements; end
//          default: begin statements; end
//          endcase
//
// This is similar to case but checks the case expressions
// in a serial manner by giving priority
// even if you have multiple expressions correct then the
// first correct expression only will be evaluated
//--------------------------------------------------------------------------------------------
module priority_case();
  
  int i;

  initial  // initially i will be incremented by 1 so that it will enter always 
  begin
    #1 i++;
    #3 $finish; //halts the process at 3 ns
  end;
  
  always @(i) 
  begin
    priority case(i)
      32'd1 : $display("This is priority no 1");
      32'd1 : $display("This is priority no 2");
      32'd1 : $display("This is priority no 3");
      //default:begin $display("default case");end
    endcase
  end
endmodule
