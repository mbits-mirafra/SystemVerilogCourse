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
  endfunction:new
  
  function void display();
    $display("place = %0d,\t members= %0d",place,members);
  endfunction:display

endclass:Mirafra

//child-1
class Teams extends Mirafra;
  string Teams;
  int members;
  
  function new();
    Teams="mirafra-teams";
    members=25;
  endfunction:new
  
  function void display();
    $display("Teams=%0d,\t mem=%0d",Teams,members);
  endfunction:display

endclass:Teams

//child-2
class bjt extends Mirafra;
  string Team;
  int members;
  string place;
  
  function new();
    Team ="Team3";
    members=4;
  endfunction:new
  
  function void display();
    $display("Team=%0d,\t members=%0d,\t place=%0d",Team,members,place);
  endfunction:display

endclass:bjt

module over_riding;

  bjt c;

  initial begin:BEGIN_I
    c=new();
    $display("contents before over-riding");
    c.display();
    c.place = "mirafra";
    c.Team="BJT";//over-riding parent-class members 
    c.members = 8;
    c.place="Manipal";
    $display("contents after over-riding");
    c.display();
  end:BEGIN_I

endmodule:over_riding
