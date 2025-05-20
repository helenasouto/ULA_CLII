module p_ula (
    input logic [5:0] A, B,
    input logic Reset,
    input logic Modo, // 0: Aritmético, 1: Lógico
    input logic [2:0] Operacao, // Seleção de operação
    output logic [5:0] O,
    output logic Carry_out, // Carry_output/Overflow
    output logic Zero      // Sinal Zero
);

    logic [5:0] arith_result, logic_result;
    logic carry_tmp;

    // Bloco combinacional para operações aritméticas
    always_comb begin
        carry_tmp = 0;
        arith_result = 6'b000000;
        if (Modo == 1'b0) begin // Operações Aritméticas
            case (Operacao)
                3'b000: {carry_tmp, arith_result} = A + B; // Soma A + B
                3'b001: {carry_tmp, arith_result} = A - B; // Subtração A - B
                3'b010: {carry_tmp, arith_result} = {1'b0, A} + {1'b0, ~B}; // Soma A + ~B
                3'b011: {carry_tmp, arith_result} = {1'b0, A} - {1'b0, ~B}; // Subtração A - ~B
                3'b100: {carry_tmp, arith_result} = A + 1; // Incremento de A
                3'b101: {carry_tmp, arith_result} = A - 1; // Decremento de A
                3'b110: {carry_tmp, arith_result} = B + 1; // Incremento de B
                3'b111: {carry_tmp, arith_result} = B - 1; // Decremento de B
                default: {carry_tmp, arith_result} = {1'b0, 6'b000000};
            endcase
        end
    end

    // Bloco combinacional para operações lógicas
    always_comb begin
        logic_result = 6'b000000;
        if (Modo == 1'b1) begin // Operações Lógicas
            case (Operacao)
                3'b000: logic_result = A & B; // AND
                3'b001: logic_result = ~A;    // NOT A
                3'b010: logic_result = ~B;    // NOT B
                3'b011: logic_result = A | B; // OR
                3'b100: logic_result = A ^ B; // XOR
                3'b101: logic_result = ~(A & B); // NAND
                3'b110: logic_result = A;     // Transfere A
                3'b111: logic_result = B;     // Transfere B
                default: logic_result = 6'b000000;
            endcase
        end
    end

    // Bloco combinacional para definir as saídas
    always_comb begin
        if (Reset) begin
            O = 6'b000000;
            Carry_out = 1'b0;
            Zero = 1'b1;
        end else begin
            if (Modo == 1'b0) begin
                O = arith_result;
                Carry_out = carry_tmp; // Carry_output/Overflow para operações aritméticas
            end else begin
                O = logic_result;
                Carry_out = 1'b0; // Carry_output/Overflow é 0 para operações lógicas
            end
            Zero = (O == 6'b000000) ? 1'b1 : 1'b0; // Sinal Zero
        end
    end

endmodule