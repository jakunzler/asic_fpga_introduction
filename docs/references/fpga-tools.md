# **Comparação entre os Modelos DE0, DE1-SoC e DE2**

## **Qual Placa Escolher?**

| **Necessidade**                     | **Placa Recomendada** |
|-------------------------------------|-----------------------|
| Aprender conceitos básicos de FPGA  | **DE0**              |
| Projetos embarcados e redes         | **DE1-SoC**          |
| Desenvolvimento multimídia avançado | **DE2**              |

Abaixo apresenta-se uma análise comparativa entre as placas de desenvolvimento **DE0**, **DE1-SoC** e **DE2**, destacando suas principais características e aplicações:

---

| **Característica**             | **DE0**                                   | **DE1-SoC**                                     | **DE2**                                   |
|--------------------------------|-------------------------------------------|------------------------------------------------|-------------------------------------------|
| **FPGA**                       | Cyclone III 3C16                          | Cyclone V SoC 5CSEMA5F31C6                    | Cyclone II 2C35                          |
| **Elementos Lógicos (LEs)**    | 15.408                                    | 85.000                                        | 35.000                                    |
| **Processador Integrado**      | Não disponível                            | Dual-core ARM Cortex-A9 (HPS)                 | Não disponível                            |
| **Memória SDRAM**              | 8 MB                                      | 64 MB no FPGA; 1 GB DDR3 no HPS               | 8 MB                                      |
| **Memória Flash**              | 4 MB                                      | Micro SD Card Slot                            | 4 MB (expansível para 8 MB)              |
| **Interface de Programação**   | USB Blaster I                             | USB Blaster II                                | USB Blaster integrado                     |
| **Recursos de Vídeo**          | Saída VGA                                 | 24-bit VGA DAC                                | 24-bit VGA DAC; TV Decoder (NTSC/PAL)     |
| **Áudio**                      | Não disponível                            | 24-bit CODEC com Line-in, Line-out e Microfone | 24-bit CODEC com Line-in, Line-out e Microfone |
| **Comunicação**                | RS-232 e PS/2                             | Ethernet 10/100/1000, RS-232, PS/2, IrDA      | Ethernet 10/100, RS-232, PS/2, USB Host/Slave |
| **GPIO**                       | 2 conectores de 40 pinos                  | 2 conectores de 40 pinos                      | 2 conectores de 40 pinos com proteção por diodos |
| **Clock Principal**            | 50 MHz                                    | 50 MHz e 27 MHz                               | 50 MHz e 27 MHz                            |
| **LEDs de Usuário**            | 10                                        | 11 (10 no FPGA, 1 no HPS)                     | 27 (18 vermelhos e 9 verdes)              |
| **Displays**                   | 4 displays de sete segmentos              | 6 displays de sete segmentos                  | 6 displays de sete segmentos + LCD 16x2   |
| **Botões e Chaves**            | 3 botões; 10 chaves deslizantes           | 4 botões; 10 chaves deslizantes               | 4 botões; 18 chaves DPDT                  |
| **Aplicações Típicas**         | Ensino de lógica digital e design básico  | Projetos embarcados, redes e processamento    | Multimídia, armazenamento e prototipagem avançada |
| **Documentação e Exemplos**    | Inclui exemplos básicos                   | Tutoriais e exemplos para HPS e FPGA          | Exemplos prontos para áudio, vídeo e comunicação |

---

### **Principais Diferenciais**

1. **DE0**:
   - Ideal para **iniciantes** que desejam aprender lógica digital e FPGA.
   - **Custo-benefício**: Compacta, acessível e fácil de usar.
   - Limitações: Não possui suporte avançado para áudio ou vídeo.

2. **DE1-SoC**:
   - Combina um **processador ARM Cortex-A9** integrado com o FPGA, tornando-a ideal para **projetos embarcados e redes**.
   - Recursos avançados como DDR3, Ethernet Gigabit e suporte a áudio/vídeo de alta qualidade.
   - Boa escolha para **projetos de médio porte** que requerem processamento integrado.

3. **DE2**:
   - Projetada para **projetos multimídia complexos** e **prototipagem avançada**.
   - Rico conjunto de periféricos: suporte a áudio, TV decoder, RS-232 e USB.
   - Foco em **educação superior** e **desenvolvimento industrial**.
