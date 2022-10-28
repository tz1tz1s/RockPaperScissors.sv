module validIO
(
  input logic [2:0] inA,
  input logic [2:0] inB,
  output logic valid
);

  // For inA
  logic a_and01;
  logic a_and12;
  logic a_and02;
  logic a_or;
  logic valid_a; //This checks if all of them are zeros
  
  assign a_and01 = inA[0] & inA[1]; //AND gates output for inA
  assign a_and12 = inA[1] & inA[2];
  assign a_and02 = inA[0] & inA[2];
  assign valid_a = ~(inaA[0] | inA[1] | inA[2]);
  assign a_or = a_and01 | a_and12 | a_and02 | valid_a; //OR gate output for inA
  
  // For inB
  logic b_and01;
  logic b_and12;
  logic b_and02;
  logic b_or;
  logic valid_b;
  
  assign b_and01 = inB[0] & inB[1]; //AND gates output for inB
  assign b_and12 = inB[1] & inB[2];
  assign b_and02 = inB[0] & inB[2];
  assign valid_b = ~(inB[0] | inB[1] | inB[2]);
  assign b_or = b_and01 | b_and12 | b_and02 | valid_b; //OR gate output for inB
  
  //For valid
  assign valid = ~(a_or | b_or);
  


endmodule