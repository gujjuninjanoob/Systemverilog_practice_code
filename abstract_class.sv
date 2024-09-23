virtual class BaseClass;
	int data;
 
	function new();
		data = 32'hc0de_c0de;
	endfunction
endclass
 
module tb;
	BaseClass base;
	initial begin
		base = new();
      $display ("data=0x%0h", base.data);
	end
endmodule
/*
# run -all
# ** Fatal: (vsim-8250) testbench.sv (16): Class allocator method 'new' called on abstract class 'BaseClass'.
#    Time: 0 ns  Iteration: 0  Process: /tb/#INITIAL#15 File: testbench.sv
# Fatal error in Module tb at testbench.sv line 16
# 
# HDL call sequence:
# Stopped at testbench.sv 16  Module tb
# 
# exit
# End time: 07:17:23 on Sep 23,2024, Elapsed time: 0:00:01
# Errors: 1, Warnings: 0
*/
virtual class BaseClass;
	int data;
 
	function new();
		data = 32'hc0de_c0de;
	endfunction
endclass
 
class ChildClass extends BaseClass;
	function new();
		data = 32'hfade_fade;
	endfunction
endclass
 
module tb;
	ChildClass child;
	initial begin
		child = new();
		$display ("data=0x%0h", child.data);
	end
endmodule

/*
# run -all
# data=0xfadefade
# exit
# End time: 07:19:05 on Sep 23,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
*/

virtual class BaseClass;
	int data;
 
	pure virtual function int getData();
endclass
 
class ChildClass extends BaseClass;
	virtual function int getData();
		data = 32'hcafe_cafe;
		return data;
	endfunction
endclass
 
module tb;
	ChildClass child;
	initial begin
		child = new();
		$display ("data = 0x%0h", child.getData());
	end
endmodule
/*
# run -all
# data = 0xcafecafe
# exit
# End time: 07:22:13 on Sep 23,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
*/
