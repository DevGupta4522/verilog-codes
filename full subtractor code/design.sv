// Code your design here
module full_subtractor( diff, borrow,a,b,c);
  input a,b,c;
  output diff, borrow;
  assign diff= (a^b^c);
  assign borrow= (~a&b)|(~(a^b)&c);
endmodule