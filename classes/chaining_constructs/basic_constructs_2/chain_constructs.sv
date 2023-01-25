class super_parent;
  int a;
  function new(int x);
    a = x;
  endfunction
endclass:super_parent

class parent extends super_parent;
  int b;
  function new(int y);
    super.new(3);
    b = y;
  endfunction
endclass:parent

class child extends parent(2);
  int c;
  function new();
    c = 1;
  endfunction

  function void display();
    $display("a = %0d,b = %0d,c = %0d",a,b,c);  
  endfunction
endclass:child

module chain_constructs;

  child c = new;

  initial begin:MAIN
    c.display();
  end:MAIN

endmodule:chain_constructs
