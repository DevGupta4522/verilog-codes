// Code your testbench here
module testbench;
  reg a,b,c;  // input
  wire sum, carry;  //output
 //instatize
  
  full_adder uut(sum, carry,a,b,c);
  
//   test cases
  
  initial begin
      #2 a=1'b0 ; b=1'b0; c=1'b0;
      #2 a=1'b0 ; b=1'b0; c=1'b1;
      #2 a=1'b0 ; b=1'b1; c=1'b0;
      #2 a=1'b0 ; b=1'b1; c=1'b1;
      #2 a=1'b1 ; b=1'b0; c=1'b0;
      #2 a=1'b1 ; b=1'b0; c=1'b1;
      #2 a=1'b1 ; b=1'b1; c=1'b0;
      #2 a=1'b1 ; b=1'b1; c=1'b1;
      #2 $finish;
  end
//  dumping the file to obtain graphs
  initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(1,testbench);
  end
endmodule
