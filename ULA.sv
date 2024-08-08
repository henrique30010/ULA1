module ula 
    #(parameter N = 16) 
    (
    input logic [2:0] op,   
    input logic [N-1:0] a,b,  
    output logic [N-1:0] r,  //resultado  
    output logic zero       
);

    always_comb 
    begin
        case (op)
          3'b000: r = a + b;       // Adição
          3'b001: r = (a >= b) ? (a - b) : {N{1'b0}}; // Subtração
          3'b010: r = a * b;       // Multiplicação
          3'b011: r = a & b;       // e bit-a-bit
          3'b100: r = a | b;       // ou bit-a-bit
          default: r = {N{1'b0}};                  
        endcase
        zero = (r == {N{1'b0}});                     
    end
endmodule