//-------------------------------------------------------
//Over-riding class members:
//Base class or parent class properties and methods can
//be overridden in the child class or extended class.
//-------------------------------------------------------
//parentclass
class Mirafra;
  string place;
  int members;
  int teams;
  function new();
    place="manipal";
    members=13;
  endfunction
  function void display();
    $display("place = %0d,\t members= %0d",place,members);
  endfunction
endclass//endclass-parentclass

//childclass-1
class Teams extends Mirafra;
  string Teams;
  int members;
  function new();
    Teams="mirafra-teams";
    members=25;
  endfunction
  function void display();
    $display("Teams=%0d,\t mem=%0d",Teams,members);
  endfunction
endclass//endclass-childclass1

//childclass-2
class BJT extends Mirafra;
  string Team;
  int members;
  string place;
  function new();
    Team ="Team3";
    members=4;
  endfunction
  function void display();
    $display("\t Team=%0d",Team);
    $display("\t members=%0d",members);
    $display("\t place=%0d",place);

  endfunction
endclass//endclass-childclass2

module over_riding;
BJT c;
initial begin
  c=new();
  c.place = "mirafra";
  c.Team="BJT";//over-riding parent-class members 
  c.members = 8;
  c.place="Manipal";
  $display("contents after over-riding");
  c.display();
end
endmodule
