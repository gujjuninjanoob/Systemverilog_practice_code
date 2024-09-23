module gujjunoob;
  // Create an associative array with key of type string and value of type int
  // for each index in a dynamic array
  int fruits [] [string];
 
  initial begin
    // Create a dynamic array with size 2
    fruits = new [7];
 
    // Initialize the associative array inside each dynamic array index
    fruits [0] = '{ "apple" : 1, "barry" : 2 };
    fruits [1] = '{ "cherry" : 3, "Guava" : 4 };
    fruits [6] = '{ "lichi" : 1, "appricot": 19, "abab" :123};
 
    // Iterate through each index of dynamic array
    foreach (fruits[i])
      // Iterate through each key of the current index in dynamic array
      foreach (fruits[i][fruit])
        $display ("fruits[%0d][%s] = %0d size is %0d", i, fruit, fruits[i][fruit],fruits[6].size());
 
  end
endmodule

/*
# run -all
# fruits[0][apple] = 1 size is 3
# fruits[0][barry] = 2 size is 3
# fruits[1][Guava] = 4 size is 3
# fruits[1][cherry] = 3 size is 3
# fruits[6][abab] = 123 size is 3
# fruits[6][appricot] = 19 size is 3
# fruits[6][lichi] = 1 size is 3
# exit
# End time: 06:23:55 on Sep 23,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
*/
