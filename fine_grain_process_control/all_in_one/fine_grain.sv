module fine_grain();
process p1,p2,p3,p4;
initial begin
  fork
  begin
    $display($time,"Welcome to world of SV");//0
    p1 = process :: self();
    #1
    $display($time,"p1");//1
  end
  begin
    $display($time,"Nuvvu thop ra ayya");//0
    p2 = process :: self();
    #3
    if (p3.status != process::FINISHED)
      //p3.kill();
      p3.suspend();//3:P3:S
    $display($time,"p2");
    #9
    if (p3.status != process::FINISHED)
//      p3.kill();
      p3.resume();
  end
  begin
    $display($time,"Welcome to world of john");//0
    p3 = process :: self();
    #4
    $display($time,"p3");//4:4    
//    if(p3.status != process::FINISHED)
//      p4.await();
  end
  begin
    $display($time,"pora rey p**ka");//0
    p4 = process :: self();
    #14
    if(p3.status != process::FINISHED)
      p4.await();
    $display($time,"p4");
  end
join_any 
$display($time,"p1:%s",p1.status());//1:F
$display($time,"p2:%s",p2.status());//1:W
$display($time,"p3_1:%s",p3.status());//1:W
#10 $display($time,"p3_2:%s",p3.status());//11:S
#2 $display($time,"p3_3:%s",p3.status());
#2 $display($time,"p4:%s",p4.status());
end 
endmodule

