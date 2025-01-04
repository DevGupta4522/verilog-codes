// Code your testbench here

module testbench;
  reg a,b,c;
  wire diff, borrow;
  
  full_subtractor uut(diff,borrow,a,b,c);
  
  initial begin
    a=1'b0; b=1'b0; c=1'b0;
    #2 a=1'b0; b=1'b0; c=1'b1;
    #2 a=1'b0; b=1'b1; c=1'b0;
    #2 a=1'b0; b=1'b1; c=1'b1;
    #2 a=1'b1; b=1'b0; c=1'b0;
    #2 a=1'b1; b=1'b0; c=1'b1;
    #2 a=1'b1; b=1'b1; c=1'b0;
    #2 a=1'b1; b=1'b1; c=1'b1;
    #2 $finish;
  end
    
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1,testbench);
  end
endmodule
    