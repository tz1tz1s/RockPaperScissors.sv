module checkTie
(
  input logic [2:0] inA,
  input logic [2:0] inB,
  output logic tie
);

  logic and_0;	
  logic and_1;
  logic and_2;
  
  assign and_0 = ~(inA[0] ^ inB[0]);
  assign and_1 = ~(inA[1] ^ inB[1]);
  assign and_2 = ~(inA[2] ^ inB[2]);
  
  assign tie = and_0 & and_1 & and_2;

  endmodule