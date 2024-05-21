function automatic void split (input string org, string delim, output string array[$]);
   string tmp = "";
 
   foreach (org[i]) begin
      if (org[i] == delim) begin
         if (tmp != "")
            array.push_back (tmp);
         tmp = "";
      end else
         tmp = {tmp, org[i]};
   end
   if (tmp.len() > 0)
      array.push_back (tmp);
endfunction
 
 
module tb;
   string str1 = "Aaa Bbb !";
   string str2 = " Ccc Ddd Eee Fff Ggg..";
   string str3 = "Hhh Iii Jjj Kkk Lll Mmm ";
   string array[$];
   string result;
 
   initial begin
      split (str1, " ", array);
      foreach (array[i])
         $display ("array[%d] = %s", i, array[i]);
 
      split (str2, " ", array);
      foreach (array[i])
         $display ("array[%0d] = %s", i, array[i]);
 
      split (str3, " ", array);
      foreach (array[i])
         $display ("array[%0d] = %s", i, array[i]);
   end
  
endmodule
 
/* Simulation Log
------------------
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
array[          0] = Aaa
array[          1] = Bbb
array[          2] = !
array[0] = Ccc
array[1] = Ddd
array[2] = Eee
array[3] = Fff
array[4] = Ggg..
array[0] = Hhh
array[1] = Iii
array[2] = Jjj
array[3] = Kkk
array[4] = Lll
array[5] = Mmm
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
*/
