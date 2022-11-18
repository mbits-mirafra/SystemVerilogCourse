//constraint c_name {soft variable {conditions};}

class pack;
rand bit [0:3]a;
constraint addr_a{a>5;}
endclass

module soft_with_conflict;

pack pkh;
initial begin

pkh = new;
$display("output of soft with conflict ");
for(int i =0; i<5;i++)
begin
void'(pkh.randomize()with {a<5;});

$display("\n \t a=%0d value =%0d",i,pkh.a);
end
pkh = new;
$display("\n \t using soft constraint to solve conflict issue");
for(int i =0; i<5;i++)
begin
  void'(pkh.randomize()with {soft a<5;});

$display("\n \t a=%0d value =%0d",i,pkh.a);
end
end
endmodule 

