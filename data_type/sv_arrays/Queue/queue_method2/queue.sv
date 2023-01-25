module queue_data;

string queue1[$];
//int queue2[$];

initial 
begin
  queue1 = {"manipal", "banglaore", "udupi"};

  $display("\nqueue1 = ['manipal', 'banglaore', 'udupi']");

  $display("\n OUTPUT : ");

  //queue1.pop_front();
  $display("\n // pop_front()-pop front the array element at first index position of queue1: \n\t %p",queue1.pop_front());
  $display("\n // After pop front  the 'manipal' is removed from queue1 is : \n\t %p", queue1);
  //queue1.pop_back();
  $display("\n // pop_back()-pop back the array element at last index position of queue1: \n\t %p", queue1.pop_back());
  $display("\n // After pop back the 'udupi' is removed from queue1 is :\n\t %p", queue1);

  queue1.push_front("Yelahanka");
  $display("\n // push front the array element at first index position of queue1:");
  $display(" // push_front()-After push front the elements of the  queue1 is :\n\t %p", queue1);

  queue1.push_back("udupi");
  $display("\n // push back the array element at last index position of queue1:");
  $display(" // push_back()-After push back the elements of the queue1 is :\n\t %p", queue1);
  $display("");
end 
endmodule:queue_data


