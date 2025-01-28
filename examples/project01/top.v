module top (
    input wire CLOCK_50,  // Clock interno de 50 MHz
    output wire LEDR0     // LED vermelho 0
);

    blink u_blink (
        .clk(CLOCK_50),   // Conecta o clock ao módulo blink
        .led(LEDR0)       // Conecta o LED ao módulo blink
    );

endmodule
