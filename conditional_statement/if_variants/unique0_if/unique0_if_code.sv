
module unique0_if_code;
byte Number=8'b0000_0100;

initial
begin : unique_if_block
  unique if (Number<0)

  begin
    $display("Number is negative");
  end
  else if (Number==0)
  begin
    $display("Number is 0");
  end
  else
  begin
    $display("Number is positive");
  end
end : unique_if_block
endmodule :unique0_if_code

