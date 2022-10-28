module winnerA
(
  input logic [2:0] inA,
  input logic [2:0] inB,
  output logic winA
);

  logic ac1;
  logic ac2;
  logic ac3;
  
  assign ac1 = inA[0] & inB[2];
  assign ac2 = inA[1] & inB[0];
  assign ac3 = inA[2] & inB[1];
  
  assign winA = ac1 | ac2 | ac3;

   
endmodule