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

virtual class virtClass;
   bit [3:0]   myVar;

   //This is a "pure virtual" function; should NOT have body. This must be 
   //overridden when you override the base class, else you get compilation error   
   pure virtual function void display ();
endclass
     
class overClass extends virtClass;

// A non-abstract class cannot declare an unimplemented virtual method
//ERROR this will cause an error 
 //  pure virtual function show ();


// Since virtClass has a pure function, it must be defined here

   virtual function void display ();
      $display ("This is a pure function re-defined");
   endfunction


   function void random ();
      $display ("Random number : %0h", $random);
   endfunction
endclass

//-----------------------------------------------------------------------------
//                               tb_top
//-----------------------------------------------------------------------------

module tb_top;

   virtClass vClass;
   overClass oClass;

   initial begin

// Turn this On to get a run time error for trying to instantiate an abstract
// class
 //ERROR: we cant create these as vClass is abstract class
      vClass = new ();


// oClass is NOT an abstract class
      oClass = new ();
      oClass.display ();
      oClass.random ();
   end
/*
# run -all
# This is a pure function re-defined
# Random number : 12153524
# exit
# End time: 07:35:31 on Sep 23,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
*/
