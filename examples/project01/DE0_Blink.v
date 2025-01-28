module blink (
    input wire clk,        // Entrada do clock
    output reg led         // Saída para o LED
);

    reg [23:0] counter;    // Contador de 24 bits

    always @(posedge clk) begin
        counter <= counter + 1;   // Incrementa o contador
        if (counter == 24'hFFFFFF) begin
            led <= ~led;          // Alterna o estado do LED
            counter <= 0;         // Reseta o contador
        end
    end

endmodule
