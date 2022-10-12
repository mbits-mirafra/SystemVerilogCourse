class hyd;
  string a;
  int d=8;
  function void display();
    $display("a = %0s",a);
    $display("d=%0d",d);
  endfunction
endclass

class branch extends hyd;
  string b;
  function void display();
    super.display();
    $display("b = %0s",b);
  endfunction
endclass

module casting;

hyd p;
branch  c;
branch c1;

initial begin:BEGIN_I
  c = new;
  c.a = "charminar";
  c.b = "cafe";
  p = c;
  $cast(c1,p);
  $display("contents of c1");
  c1.display();

end:BEGIN_I

endmodule:casting
