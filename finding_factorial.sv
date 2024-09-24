module gujunoob;
 
 byte a,b;
  function  int factorial (input int a);
  begin
    if (a > 1) begin
      factorial = a * factorial(a - 1);
    end
    else begin
      factorial = 1;
    end
  end
endfunction : factorial

  initial begin
    a=7;
    $display("factorial of a is %0d",factorial(a) );
  end
  
 
endmodule
/*
# run -all
# factorial of a is 5040
# exit
# End time: 01:45:59 on Sep 24,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
*/
