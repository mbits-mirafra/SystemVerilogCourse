//module: Interface  
interface dff(input clk);    

  //declare the signals    
  logic d;   
  logic q;   

  //Clocking block for dut    
  clocking cd @(posedge clk);   
    default input #1step output #0;      
    input d;
    output q;
  endclocking     

  //modport for dut    
  modport dut(clocking cd);    

  //modport for tb     
  modport tb(input q, output d, input clk); 

endinterface
