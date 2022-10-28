module winnerB
(
  input logic [2:0] inA,
  input logic [2:0] inB,
  output logic winB
);

  logic bc1;
  logic bc2;
  logic bc3;
  
  assign bc1 = inB[0] & inA[2];
  assign bc2 = inB[1] & inA[0];
  assign bc3 = inB[2] & inA[1];
  
  assign winB = bc1 | bc2 | bc3;
  
endmodule