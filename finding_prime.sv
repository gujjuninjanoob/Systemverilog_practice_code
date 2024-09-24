module gujunoob;
 
 byte a,b;
  function  int prime (input int a);
    if(a<1)
    return 2;
     
    for(int i=2;i<a;i++)begin
      if(a%i==0)
      return 2;
      
    end
    prime=a;
  endfunction : prime

  initial begin
    a=79;
    $display("%0d is prime number",prime(a) );
  end
endmodule
/*
# run -all
# 79 is prime number
# exit
# End time: 02:08:12 on Sep 24,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
*/
