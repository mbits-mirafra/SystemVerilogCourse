module consecutive_repetition;
bit clk,a,b;

always #5 clk = ~clk; //clock generation

initial begin
  a=0; b=0;
  #15 a=1; b=0;  //15
  #10 a=0; b=1;  //25
  #10 a=0; b=1;  //35
  #10 a=0; b=1;  //45
  #10 a=1; b=1;  //55
  #10 a=0; b=1;  //65
  #10 a=0; b=1;  //75
  #10 a=0; b=0;  //85
  #10 a=1; b=0;  //95
  #10 a=0; b=0;  //105
  #10 a=1; b=1;  //115
  #10 a=0; b=1;  //125
  #10 a=0; b=1;  //135
  #10 a=0; b=0;  //145
  #10 a=0; b=0;  //155
  #10;
  $finish;
end


//property definition
property p;
  @(posedge clk) a |-> ##1 b[*3];
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
