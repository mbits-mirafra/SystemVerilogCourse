/*
syntax -
priority if(condition)begin
  Statements;
end
else if(condition)begin
  Statements;
end


*/

module priority_if_code;

  byte Number=8'b0000__0100;

  initial
  begin : priority_every_if_block_false
    priority if (Number<0)
    begin
      $display("Number is positive");
    end
    else if (Number==4)
    begin
      $display("Number is 4");
    end
    //else
    //begin
    //  $display("Number is negative");
    //end
  end : priority_every_if_block_false
  endmodule :priority_if_code
