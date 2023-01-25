
//constraint c_name {soft variable {conditions};}

class pack;
rand bit [0:3]a;
constraint addr_a{a>5;}
endclass

module soft_without_conflict;

pack pkh;
initial begin

pkh = new;
$display("without using soft constraint output");
  for(int i =0; i<5;i++)
begin
void'(pkh.randomize());

$display("\n \t a=%0d value =%0d",i,pkh.a);
end
pkh = new;
$display("\n \t output of without conflict");
for(int i =0; i<5;i++)
begin
void'(pkh.randomize()with {a<10;});

$display("\n \t a=%0d value =%0d",i,pkh.a);
end
end
endmodule 

