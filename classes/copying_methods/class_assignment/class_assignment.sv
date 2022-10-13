class Mirafra;
  string c;
  int d;
 
  
  function new();
    c="team";
    d=4;
  endfunction:new
  
  function void display();
    $display("\t c=%0s,d=%0d",c,d);
  endfunction:display

endclass:Mirafra

module assignment;
  Mirafra p1;
  Mirafra p2;

  initial begin:BEGIN_I
    p1=new();
    $display("");
    $display("contents of p1 before changes");
    p1.display();
    p2=p1;
    $display("contents of p2 before changes");
    p2.display();
    p2.c="BJT";
    p2.d=8;
    $display("contents of p1 after changes");
    p1.display();
    $display("contents of p2 after changes");
    p2.display();
    $display("");
  end:BEGIN_I

endmodule:assignment
