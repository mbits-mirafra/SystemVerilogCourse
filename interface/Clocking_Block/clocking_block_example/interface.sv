//module: Interface  
interface dff(input clk);    

  //declare the signals    
  logic d;   
  logic q;   

  //Clocking block for dut    
  clocking cb @(posedge clk);   
    default input #1step output #0;   
    output q;   
    input d;    
  endclocking     

  //modport for dut    
  modport dut(clocking cb);    
  //modport for tb     
  modport tb(input q, output d, input clk);   

endinterface: dff    
