
//Union packed
typedef union packed {
  bit [7:0] B;
  logic [7:0] C  ;
} ABC_u;//Union name

module unionpacked;
  
  ABC_u abc; 
  initial begin 
    
 //Initialization of values
  abc.B = 'hab;
    $display("\n abc.B = %0h" ,abc.B);
 
 abc.C = 'hcd;
    $display("\n abc.C = %0h" ,abc.C); 
    $display("\n size is:",$bits(ABC_u));

  end 
endmodule:ABC_u

