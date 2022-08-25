/*repeat Syntax

repeat (<variable>)begin
  statement -1
  ---
  statement - n
end
*/

module repeat_loop;
int b;
initial begin   //procedural_block
  $display("---for_ever loop output-----");

  repeat(5) begin //repeat loop
  $display("\tVlaue of b=%0b",b);
  b++; //incrementing by 0 to 4 and exit
end

$display("---------");
end
endmodule:repeat_loop
