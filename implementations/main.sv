module Main #(
    // specify input bit width
    parameter N = 32
)(
    input logic [N-1:0] x,
    output logic is_prime
);
  always_comb begin
    is_prime = 1'b0;
  end
endmodule