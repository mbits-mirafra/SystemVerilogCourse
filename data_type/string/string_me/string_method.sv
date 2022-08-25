module string_m;

// Declaring 2 strings,str and str1, str1 is for comparing purpose

string str ="Manipal";
string str1="mirafra";
//declaring temp variable
string temp;

initial begin
  $display("\nstr=Manipal");
  $display("str1=mirafra"); 

  //gives the length of a string
  $display("\n// str.len() - Returns length of string");
  $display("// Output of str.len()");
  $display("%0d",str.len());

  //replace the given index(3) with the given letter(t)
  // temp is initialised to string because to make the changes, i.e temp.putc(3, "t")
  temp=str;
  temp.putc(3, "t");
  $display("\n// temp.putc() - Used to assign one character of string");
  $display("// Output of temp.putc(3, t)");
  $display("%s", temp);


  //gives the mentioned index(1) letter from string
  $display("\n// str.getc() - Returns a character");
  $display("// Output of str.getc(1))");
  $display("%s", str.getc(1));

  //gives the string in lowercase
  $display("\n// str.tolower() - Returns the lowercase of string");
  $display("// Output of str.tolower()");
  $display("%s", str.tolower());

  //gives the string in uppercase
  $display("\n// str.toupper() - Returns the uppercase of string");
  $display("// Output of str.toupper()");
  $display("%s", str.toupper());

  //Here 2 string are compared and the result is ascii value
  $display("\n// str.compare() - Returns the string compared result in ascii format");
  $display("// Output of str.compare(str1)");
  $display("%d", str.compare(str1));

  //Here 2 string are compared regardless of their case(upper or lower) and the result is ascii value
  $display("\n// str.icompare() - Returns caseless string compared result in ascii format");
  $display("// Output of str.icompare(str1)");
  $display("%d", str.icompare(str1));

  //gives the string letter which is mentioned(1,2) as below
  $display("\n// str.substr(1,2) - Returns the sub string of main string");
  $display("// Output of str.substr(1,2)");
  $display("%s", str.substr(1,2));
  $display("");
end

endmodule : string_m

