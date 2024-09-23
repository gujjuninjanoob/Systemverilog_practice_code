module gujjunoob;
  int array[4] = '{1, 2, 3, 4};
 
  initial begin
    $display ("sum     = %0d", array.sum());    
    $display ("product = %0d", array.product());    
    $display ("and     = 0x%0h", array.and());
    $display ("or      = 0x%0h", array.or());    
    $display ("xor     = 0x%0h", array.xor());   
  end
endmodule
/*
# run -all
# sum     = 10
# product = 24
# and     = 0x0
# or      = 0x7
# xor     = 0x4
# exit
# End time: 02:51:05 on Sep 23,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
*/
module gujjunoob;
  int array[9] = '{4, 7, 2, 5, 7, 1, 6, 3, 1};
  int res[$];
 
  initial begin   
    res = array.min();
    $display ("min          : %p", res);
 
    res = array.max();
    $display ("max          : %p", res);
 
    res = array.unique();
    $display ("unique       : %p", res);
 
    res = array.unique(x) with (x < 5);
    $display ("unique less then 5 index      : %p", res);
 
    res = array.unique_index;
    $display ("unique_index : %p", res);
    
    res = array.find(x) with (x > 3);
    $display ("find(x)         : %p", res);
 
    res = array.find_index with (item == 4);
    $display ("find_index      : res[%0d] = 4", res[0]);
 
    res = array.find_first with (item < 5 & item >= 3);
    $display ("find_first      : %p", res);
 
    res = array.find_first_index(x) with (x > 5);
    $display ("find_first_index: %p", res);
 
    res = array.find_last with (item <= 7 & item > 3);
    $display ("find_last       : %p", res);
 
    res = array.find_last_index(x) with (x < 3);
    $display ("find_last_index : %p", res);
    
    array.reverse();
    $display ("reverse  : %p", array);
 
    array.sort();
    $display ("sort     : %p", array);
 
    array.rsort();
    $display ("rsort    : %p", array);
 
    for (int i = 0; i < 5; i++) begin
    	array.shuffle();
      $display ("shuffle Iteration:%0d  = %p", i, array);
    end
  end
endmodule


/*
# run -all
# min          : '{1}
# max          : '{7}
# unique       : '{1, 2, 3, 4, 5, 6, 7}
# unique less then 5 index      : '{7, 4}
# unique_index : '{5, 2, 7, 0, 3, 6, 1}
# find(x)         : '{4, 7, 5, 7, 6}
# find_index      : res[0] = 4
# find_first      : '{4}
# find_first_index: '{1}
# find_last       : '{6}
# find_last_index : '{8}
# reverse  : '{1, 3, 6, 1, 7, 5, 2, 7, 4}
# sort     : '{1, 1, 2, 3, 4, 5, 6, 7, 7}
# rsort    : '{7, 7, 6, 5, 4, 3, 2, 1, 1}
# shuffle Iteration:0  = '{3, 7, 2, 7, 1, 4, 5, 1, 6}
# shuffle Iteration:1  = '{7, 7, 3, 1, 2, 5, 6, 1, 4}
# shuffle Iteration:2  = '{1, 2, 3, 7, 5, 1, 7, 4, 6}
# shuffle Iteration:3  = '{1, 6, 1, 7, 4, 3, 2, 5, 7}
# shuffle Iteration:4  = '{1, 3, 4, 2, 1, 7, 6, 7, 5}
# exit
# End time: 03:14:17 on Sep 23,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
*/
class abc;
  string name;
  rand bit [3:0] country;
  rand bit [3:0] city;
 
  function new (string name);
    this.name = name;
  endfunction
 
  function void print();
    $display("name=%s country=%0d city=%0d", name, country, city);
  endfunction
 
endclass
module gujjunoob;
  abc m_abc[4];
  string name_arr[4] = '{"USA", "ENG", "IND", "CHINA"};
 
  initial begin
    $display ("\
-------- Initial Values --------");
    foreach (m_abc[i]) begin
      m_abc[i] = new (name_arr[i]);
      m_abc[i].randomize();
      m_abc[i].print();
    end
 
    $display ("\
--------- Sort by name ------------");
 
    m_abc.sort(x) with (x.name);
    foreach (m_abc[i]) m_abc[i].print();
 
    $display ("\
--------- Sort by rank, pages -----------");
 
    m_abc.sort(x) with ( {x.country, x.city});
    foreach (m_abc[i]) m_abc[i].print();
  end
endmodule

/*
# run -all
# -------- Initial Values --------
# name=USA country=4 city=15
# name=ENG country=9 city=0
# name=IND country=4 city=3
# name=CHINA country=7 city=12
# --------- Sort by name ------------
# name=CHINA country=7 city=12
# name=ENG country=9 city=0
# name=IND country=4 city=3
# name=USA country=4 city=15
# --------- Sort by rank, pages -----------
# name=IND country=4 city=3
# name=USA country=4 city=15
# name=CHINA country=7 city=12
# name=ENG country=9 city=0
# exit
# End time: 03:32:57 on Sep 23,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
*/
