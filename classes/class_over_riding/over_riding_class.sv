//-------------------------------------------------------
//Over-riding class members:
//Base class or parent class properties and methods can
//be overridden in the child class or extended class.
//-------------------------------------------------------

//parent class
class Mirafra;
  //declared variable place members and teams
  string place;
  int members;
  int teams;
  //class construct and assigning default values
  function new();
    place="manipal";
    members=13;
  endfunction:new
  //printing value of place and members
  function void display();
    $display("place = %0d,\t members= %0d",place,members);
  endfunction:display

endclass:Mirafra

//child-1
class Teams extends Mirafra;
  //declared variable members and teams
  string Teams;
  int members;
  //class construct and assigning default values
  function new();
    Teams="mirafra-teams";
    members=25;
  endfunction:new
  //printing value of Teams and members
  function void display();
    $display("Teams=%0d,\t mem=%0d",Teams,members);
  endfunction:display

endclass:Teams

//child-2
class bjt extends Mirafra;
  //declared variable members and team and place
  string Team;
  int members;
  //class construct and assigning default values
  function new();
    Team ="Team3";
    members=4;
  endfunction:new
  //printing value of Team members and place
  function void display();
    $display("Team=%0d,\t members=%0d,\t place=%0d",Team,members,place);
  endfunction:display

endclass:bjt

module over_riding;
  //declare handle for bjt class
  bjt c;

  initial begin:BEGIN_I
    //creating memory for c
    c=new();
    $display("contents before over-riding");
    //calling display function of bjt class
    c.display();
    //modifying new value using c object
    //over-riding parent-class members
    c.place = "mirafra";
    c.Team="BJT";
    c.members = 8;
    $display("contents after over-riding");
    //calling display function of bjt class
    c.display();
  end:BEGIN_I

endmodule:over_riding
