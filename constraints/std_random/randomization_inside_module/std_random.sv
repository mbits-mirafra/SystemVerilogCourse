module std_random;
bit [3:0]a;
bit [3:0]b;
bit [3:0]c;
bit [3:0]d;
bit [3:0]e;
initial begin
  repeat(4)begin
void'( std ::randomize(a));
$display("value of a  %d",a);
void'(std::randomize(b)with  {b>6; a<12;});
$display("value of b :%d",b);
void'(std::randomize(c,d)with  {c<4; d<3;});
$display("value of c :%d and d  %d ",c,d);
void'(std::randomize(e)with  {e inside {[1:4]};});
$display("value of e :%d ",e);

end
end
endmodule
