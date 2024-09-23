module gujjunoob;
  bit [2:0][3:0][15:0] 	m_data; 	
 
	initial begin
		// 1. Assign a value to the MDA
      m_data[0] = 32'hbeef_dead;
      m_data[1] = 32'habcc_deff;
      m_data[2] = 32'hA10B_20C3;
 
      // m_data gets a packed value
      $display ("m_data = 0x%0h", m_data);
 
		
      foreach (m_data[i]) begin
        $display ("m_data[%0d] = 0x%0h", i, m_data[i]);
        foreach (m_data[i][j]) begin
          $display ("m_data[%0d][%0d] = 0x%0h", i, j, m_data[i][j]);
        end
      end
	end
endmodule
/*
# run -all
# m_data = 0xa10b20c300000000abccdeff00000000beefdead
# m_data[2] = 0xa10b20c3
# m_data[2][3] = 0x0
# m_data[2][2] = 0x0
# m_data[2][1] = 0xa10b
# m_data[2][0] = 0x20c3
# m_data[1] = 0xabccdeff
# m_data[1][3] = 0x0
# m_data[1][2] = 0x0
# m_data[1][1] = 0xabcc
# m_data[1][0] = 0xdeff
# m_data[0] = 0xbeefdead
# m_data[0][3] = 0x0
# m_data[0][2] = 0x0
# m_data[0][1] = 0xbeef
# m_data[0][0] = 0xdead
# exit
# End time: 01:54:59 on Sep 23,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
# *** Summary *********************************************
#     qrun: Errors:   0, Warnings:   0
#     vlog: Errors:   0, Warnings:   1
#     vopt: Errors:   0, Warnings:   3
#     vsim: Errors:   0, Warnings:   0
#   Totals: Errors:   0, Warnings:   4
*/

module gujjunoob;
  bit [2:0][3:0][7:0] 	m_data; 	
 
	initial begin
		// 1. Assign a value to the MDA
      m_data[0] = 32'hbeef_dead;
      m_data[1] = 32'habcc_deff;
      m_data[2] = 32'hA10B_20C3;
 
      // m_data gets a packed value
      $display ("m_data = 0x%0h", m_data);
 
		
      foreach (m_data[i]) begin
        $display ("m_data[%0d] = 0x%0h", i, m_data[i]);
        foreach (m_data[i][j]) begin
          $display ("m_data[%0d][%0d] = 0x%0h", i, j, m_data[i][j]);
        end
      end
	end
endmodule
/*
# run -all
# m_data = 0xa10b20c3abccdeffbeefdead
# m_data[2] = 0xa10b20c3
# m_data[2][3] = 0xa1
# m_data[2][2] = 0xb
# m_data[2][1] = 0x20
# m_data[2][0] = 0xc3
# m_data[1] = 0xabccdeff
# m_data[1][3] = 0xab
# m_data[1][2] = 0xcc
# m_data[1][1] = 0xde
# m_data[1][0] = 0xff
# m_data[0] = 0xbeefdead
# m_data[0][3] = 0xbe
# m_data[0][2] = 0xef
# m_data[0][1] = 0xde
# m_data[0][0] = 0xad
# exit
# End time: 01:56:28 on Sep 23,2024, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
*/
module gujjunoob;
  bit [2:0][3:0][7:0][3:0] 	m_data; 	
 
	initial begin
		// 1. Assign a value to the MDA
      m_data[0] = 32'hbeef_dead;
      m_data[1] = 32'habcc_deff;
      m_data[2] = 32'hA10B_20C3;
 
      // m_data gets a packed value
      $display ("m_data = 0x%0h", m_data);
 
		
      foreach (m_data[i]) begin
        $display ("m_data[%0d] = 0x%0h", i, m_data[i]);
        foreach (m_data[i][j]) begin
          $display ("m_data[%0d][%0d] = 0x%0h", i, j, m_data[i][j]);
          foreach (m_data[i][j][k]) begin
            $display ("m_data[%0d][%0d] = 0x%0h", i, j, m_data[i][j][k]);
          end
        end
      end
	end
endmodule
/*
# run -all
# m_data = 0xa10b20c3000000000000000000000000abccdeff000000000000000000000000beefdead
# m_data[2] = 0xa10b20c3
# m_data[2][3] = 0x0
# m_data[2][3] = 0x0
# m_data[2][3] = 0x0
# m_data[2][3] = 0x0
# m_data[2][3] = 0x0
# m_data[2][3] = 0x0
# m_data[2][3] = 0x0
# m_data[2][3] = 0x0
# m_data[2][3] = 0x0
# m_data[2][2] = 0x0
# m_data[2][2] = 0x0
# m_data[2][2] = 0x0
# m_data[2][2] = 0x0
# m_data[2][2] = 0x0
# m_data[2][2] = 0x0
# m_data[2][2] = 0x0
# m_data[2][2] = 0x0
# m_data[2][2] = 0x0
# m_data[2][1] = 0x0
# m_data[2][1] = 0x0
# m_data[2][1] = 0x0
# m_data[2][1] = 0x0
# m_data[2][1] = 0x0
# m_data[2][1] = 0x0
# m_data[2][1] = 0x0
# m_data[2][1] = 0x0
# m_data[2][1] = 0x0
# m_data[2][0] = 0xa10b20c3
# m_data[2][0] = 0xa
# m_data[2][0] = 0x1
# m_data[2][0] = 0x0
# m_data[2][0] = 0xb
# m_data[2][0] = 0x2
# m_data[2][0] = 0x0
# m_data[2][0] = 0xc
# m_data[2][0] = 0x3
# m_data[1] = 0xabccdeff
# m_data[1][3] = 0x0
# m_data[1][3] = 0x0
# m_data[1][3] = 0x0
# m_data[1][3] = 0x0
# m_data[1][3] = 0x0
# m_data[1][3] = 0x0
# m_data[1][3] = 0x0
# m_data[1][3] = 0x0
# m_data[1][3] = 0x0
# m_data[1][2] = 0x0
# m_data[1][2] = 0x0
# m_data[1][2] = 0x0
# m_data[1][2] = 0x0
# m_data[1][2] = 0x0
# m_data[1][2] = 0x0
# m_data[1][2] = 0x0
# m_data[1][2] = 0x0
# m_data[1][2] = 0x0
# m_data[1][1] = 0x0
# m_data[1][1] = 0x0
# m_data[1][1] = 0x0
# m_data[1][1] = 0x0
# m_data[1][1] = 0x0
# m_data[1][1] = 0x0
# m_data[1][1] = 0x0
# m_data[1][1] = 0x0
# m_data[1][1] = 0x0
# m_data[1][0] = 0xabccdeff
# m_data[1][0] = 0xa
# m_data[1][0] = 0xb
# m_data[1][0] = 0xc
# m_data[1][0] = 0xc
# m_data[1][0] = 0xd
# m_data[1][0] = 0xe
# m_data[1][0] = 0xf
# m_data[1][0] = 0xf
# m_data[0] = 0xbeefdead
# m_data[0][3] = 0x0
# m_data[0][3] = 0x0
# m_data[0][3] = 0x0
# m_data[0][3] = 0x0
# m_data[0][3] = 0x0
# m_data[0][3] = 0x0
# m_data[0][3] = 0x0
# m_data[0][3] = 0x0
# m_data[0][3] = 0x0
# m_data[0][2] = 0x0
# m_data[0][2] = 0x0
# m_data[0][2] = 0x0
# m_data[0][2] = 0x0
# m_data[0][2] = 0x0
# m_data[0][2] = 0x0
# m_data[0][2] = 0x0
# m_data[0][2] = 0x0
# m_data[0][2] = 0x0
# m_data[0][1] = 0x0
# m_data[0][1] = 0x0
# m_data[0][1] = 0x0
# m_data[0][1] = 0x0
# m_data[0][1] = 0x0
# m_data[0][1] = 0x0
# m_data[0][1] = 0x0
# m_data[0][1] = 0x0
# m_data[0][1] = 0x0
# m_data[0][0] = 0xbeefdead
# m_data[0][0] = 0xb
# m_data[0][0] = 0xe
# m_data[0][0] = 0xe
# m_data[0][0] = 0xf
# m_data[0][0] = 0xd
# m_data[0][0] = 0xe
# m_data[0][0] = 0xa
# m_data[0][0] = 0xd
# exit
# End time: 01:58:28 on Sep 23,2024, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
*/

