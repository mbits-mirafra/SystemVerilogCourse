module queue_data;

string queue1[$];
//int queue2[$];

initial begin

  // Initialize a queue named 'queue1' with three string elements: "manipal", "banglaore", and "udupi"
  queue1 = {"manipal", "banglaore", "udupi"};

  // Display the initial contents of queue1
  $display("\nqueue1 = ['manipal', 'banglaore', 'udupi']");

  $display("\n OUTPUT : ");

  //pop_front() to remove the first element from the queue
  $display("\n // pop_front()-pop front the array element at first index position of queue1: \n\t %p",queue1.pop_front());
  $display("\n // After pop front  the 'manipal' is removed from queue1 is : \n\t %p", queue1);
  //queue1.pop_back remove the last element from the queu
  $display("\n // pop_back()-pop back the array element at last index position of queue1: \n\t %p", queue1.pop_back());
  $display("\n // After pop back the 'udupi' is removed from queue1 is :\n\t %p", queue1);

  //Use push_front() to add "Yelahanka" to the front of queue1
  queue1.push_front("Yelahanka");
  $display("\n // push front the array element at first index position of queue1:");
  $display(" // push_front()-After push front the elements of the  queue1 is :\n\t %p", queue1);

  //Use push_back() to add "udupi" to the front of queue1
  queue1.push_back("udupi");
  $display("\n // push back the array element at last index position of queue1:");
  $display(" // push_back()-After push back the elements of the queue1 is :\n\t %p", queue1);
  $display("");
end 
endmodule:queue_data


