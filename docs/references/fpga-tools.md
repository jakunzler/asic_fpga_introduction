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

### **Comparação Genérica das Famílias Cyclone**

A família **Cyclone** de FPGAs da Intel é amplamente utilizada por sua combinação de custo-benefício, eficiência energética e versatilidade. Projetadas para atender desde projetos básicos até aplicações industriais e embarcadas, as diferentes gerações da família Cyclone oferecem avanços significativos em desempenho, capacidade e eficiência.

---

### **Tabela Comparativa**

| **Característica**           | **Cyclone I**          | **Cyclone II**         | **Cyclone III**        | **Cyclone IV**        | **Cyclone V**         | **Cyclone 10 LP**         | **Cyclone 10 GX**         |
|------------------------------|------------------------|------------------------|------------------------|-----------------------|-----------------------|---------------------------|---------------------------|
| **Tecnologia de Fabricação** | 130 nm                | 90 nm                 | 65 nm                 | 60 nm                | 28 nm                | 60 nm                    | 20 nm                    |
| **Elementos Lógicos (LEs)**  | Até 20.060            | Até 68.416            | Até 119.088           | Até 150.000          | Até 301.000          | Até 120.000              | Até 220.000              |
| **Memória Embutida**         | Até 294 Kbits         | Até 1.152 Kbits       | Até 4.095 Kbits       | Até 6.768 Kbits      | Até 13.272 Kbits     | Até 4.608 Kbits          | Até 11.721 Kbits         |
| **Multiplicadores DSP**      | Até 52                | Até 150               | Até 576               | Até 532              | Até 1.120            | Até 128                  | Até 144                  |
| **PLLs**                    | 4                     | 4                     | 4                     | 8                    | 12                   | 4                        | 8                        |
| **Interface de Memória**     | SDRAM                 | SDRAM                 | SDRAM, DDR, DDR2      | DDR, DDR2            | DDR3, LPDDR2         | DDR3                     | DDR3                     |
| **Velocidade de Clock**      | Moderada              | Moderada              | Alta                  | Alta                 | Muito alta           | Alta                     | Muito alta               |
| **Consumo de Energia**       | Alto                  | Moderado              | Baixo                 | Muito baixo          | Muito baixo          | Muito baixo              | Muito baixo              |
| **I/Os Diferenciais**        | Limitado              | Sim                   | Sim                   | Sim                  | Sim                  | Sim                      | Sim                      |
| **Aplicações Típicas**       | Projetos simples      | Educacionais          | Sistemas embarcados   | Comunicações         | Processamento avançado| Sistemas industriais     | Processamento de sinais  |

---

### **Análise Detalhada das Famílias**

#### **1. Cyclone I**

- **Lançamento**: Primeira geração da família Cyclone.
- **Características**:
  - Tecnologia de 130 nm com até 20.060 elementos lógicos.
  - Baixo custo, voltado para projetos educacionais e aplicações simples.
- **Limitações**:
  - Suporte limitado a interfaces de memória modernas e baixa densidade de memória embutida.

#### **2. Cyclone II**

- **Lançamento**: Sucessor do Cyclone I, com melhorias significativas.
- **Características**:
  - Tecnologia de 90 nm com até 68.416 LEs.
  - Memória embutida aumentada e suporte a SDRAM.
- **Aplicações**:
  - Ideal para projetos educacionais e controladores básicos.

#### **3. Cyclone III**

- **Lançamento**: Introdução do foco em eficiência energética.
- **Características**:
  - Fabricado em 65 nm, com até 119.088 LEs e suporte a DDR e DDR2.
  - Consumo de energia reduzido, tornando-o adequado para dispositivos móveis.
- **Aplicações**:
  - Sistemas embarcados, processamento de sinais e redes.

#### **4. Cyclone IV**

- **Lançamento**: Aumento na capacidade e melhor desempenho em comunicação.
- **Características**:
  - Fabricado em 60 nm, com até 150.000 LEs.
  - Suporte a padrões de memória mais rápidos, como DDR2.
- **Aplicações**:
  - Comunicação de alta velocidade, incluindo Ethernet.

#### **5. Cyclone V**

- **Lançamento**: Integração de processamento embutido (SoC).
- **Características**:
  - Fabricado em 28 nm com até 301.000 LEs.
  - Introdução do HPS (Hard Processor System) com ARM Cortex-A9.
  - Suporte a DDR3 e LPDDR2.
- **Aplicações**:
  - Sistemas embarcados avançados e aplicações industriais.

#### **6. Cyclone 10 LP**

- **Lançamento**: Focado em aplicações de custo baixo e baixa energia.
- **Características**:
  - Fabricado em 60 nm, com até 120.000 LEs.
  - Consumo de energia otimizado.
- **Aplicações**:
  - Sistemas industriais e controle embarcado.

#### **7. Cyclone 10 GX**

- **Lançamento**: Maior capacidade de processamento.
- **Características**:
  - Fabricado em 20 nm, com até 220.000 LEs.
  - Suporte a interfaces de alta velocidade e memória DDR3.
- **Aplicações**:
  - Processamento de sinais e aplicações de alto desempenho.

---

### **Escolha da Família Ideal**

| **Necessidade**                                | **Família Recomendada**           |
|-----------------------------------------------|-----------------------------------|
| Projetos básicos e educacionais               | Cyclone I, Cyclone II            |
| Sistemas embarcados e baixo consumo de energia| Cyclone III, Cyclone 10 LP       |
| Comunicação e processamento multimídia        | Cyclone IV                       |
| Projetos industriais e processamento avançado | Cyclone V                        |
| Aplicações de alta velocidade e desempenho    | Cyclone 10 GX                    |

---

### **Resumo**

A família Cyclone oferece opções para uma ampla gama de aplicações, desde aprendizado básico até projetos industriais avançados. À medida que a série avança, há aumentos significativos em densidade, eficiência energética e suporte a interfaces modernas.
