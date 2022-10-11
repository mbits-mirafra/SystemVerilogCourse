module isunknown;  
bit clk,a;  
logic [4:0] b;  

always #5 clk = ~clk; //clock generation  

initial begin
      a=0; b=5'b00000;
  #15 a=1; b=5'b001x0;  //15
  #10 a=0; b=5'b01000;  //25
  #10 a=1; b=5'b010z0;  //35
  #10 a=0; b=5'b01000;  //45
  #10 a=1; b=5'b10xz0;  //55
  #10 a=0; b=5'b10000;  //65
  #10 a=1; b=5'bxxxxx;  //75
  #10 a=0; b=5'b01100;  //85
  #10 a=1; b=5'bzzzzz;  //95
  #10 a=0; b=5'b01000;  //105
  #10 a=1; b=5'b10100;  //115
  #10 a=0; b=5'b01000;  //125
  #10 a=1; b=5'b10000;  //135
  #10 a=1; b=5'b00100;  //145
  #10;
  $finish;
end

//property definition  
   property p;  
     @(posedge clk) a |-> $isunknown(b);  
   endproperty  
                      
//calling assert property  
   a_1: assert property(p)  
       $info("Pass");  
     else  
     $info("Fail");  

     initial begin
       $dumpfile("waveform.vcd");
       $dumpvars();
     end
endmodule  
  
