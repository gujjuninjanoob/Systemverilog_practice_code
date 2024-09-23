
module gujjunoob;
  bit [3:0][7:0] 	stack [3][4]; 		// 2 rows, 4 cols
 
	initial begin
		// Assign random values to each slot of the stack
		foreach (stack[i])
          foreach (stack[i][j]) begin
            stack[i][j] = $random;
            $display ("stack[%0d][%0d] = 0x%0h", i, j, stack[i][j]);
			end
 
		// Print contents of the stack
		$display ("stack = %p", stack);
 
      // Print content of a given index
      $display("stack[0][0][2] = 0x%0h", stack[0][0][2]);
	end
endmodule
 
/*
# run -all
# stack[0][0] = 0x12153524
# stack[0][1] = 0xc0895e81
# stack[0][2] = 0x8484d609
# stack[0][3] = 0xb1f05663
# stack[1][0] = 0x6b97b0d
# stack[1][1] = 0x46df998d
# stack[1][2] = 0xb2c28465
# stack[1][3] = 0x89375212
# stack[2][0] = 0xf3e301
# stack[2][1] = 0x6d7cd0d
# stack[2][2] = 0x3b23f176
# stack[2][3] = 0x1e8dcd3d
# stack = '{'{'{18, 21, 53, 36}, '{192, 137, 94, 129}, '{132, 132, 214, 9}, '{177, 240, 86, 99}}, '{'{6, 185, 123, 13}, '{70, 223, 153, 141}, '{178, 194, 132, 101}, '{137, 55, 82, 18}}, '{'{0, 243, 227, 1}, '{6, 215, 205, 13}, '{59, 35, 241, 118}, '{30, 141, 205, 61}}}
# stack[0][0][2] = 0x15
# exit
# End time: 06:28:20 on Sep 23,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
*/
