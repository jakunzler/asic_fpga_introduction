# **Descrição da Placa DE1-SoC**

A **DE1-SoC Development Kit** é uma plataforma robusta de desenvolvimento baseada no Altera System-on-Chip (SoC) FPGA, oferecendo uma combinação poderosa de processadores embutidos e lógica programável de alto desempenho. Projetada para proporcionar flexibilidade máxima em projetos, a DE1-SoC combina os mais recentes núcleos duais Cortex-A9 com a capacidade de reconfiguração da lógica FPGA, permitindo um amplo conjunto de aplicações.

## **Explorando as característica da placa DE1**

---

### **Destaques e Benefícios**

#### **1. Arquitetura SoC Avançada**

- **Hard Processor System (HPS)**:
  - A DE1-SoC integra um processador baseado em ARM Cortex-A9 dual-core com periféricos e interfaces de memória.
  - O HPS é conectado diretamente ao FPGA por meio de uma interconexão de alta largura de banda, permitindo uma integração perfeita entre software e hardware.
- **Flexibilidade**:
  - A combinação do sistema de processamento de alto desempenho com a lógica programável permite uma reconfiguração dinâmica, ideal para projetos complexos.

#### **2. Recursos de Hardware**

- **Memória DDR3 de Alta Velocidade**:
  - Oferece suporte a aplicações que exigem alta largura de banda e baixa latência.
- **Capacidades de Áudio e Vídeo**:
  - Interfaces de áudio e vídeo inclusas para aplicações multimídia, processamento de sinais e sistemas embarcados.
- **Rede Ethernet**:
  - Suporte à conectividade Ethernet para projetos de redes e comunicação.

#### **3. Compatibilidade e Suporte**

- Funciona em conjunto com computadores que utilizam **Windows XP ou versões posteriores**.
- Requer um sistema operacional de 64 bits e o **Quartus II 64-bit** para a compilação de projetos.

---

### **Aplicações Potenciais**

A DE1-SoC é adequada para uma ampla gama de aplicações, incluindo:

- **Processamento de Sinais Digitais**: Áudio e vídeo em tempo real.
- **Desenvolvimento de Sistemas Embarcados**: Combinando o HPS baseado em ARM com a lógica FPGA.
- **Redes e Comunicação**: Utilizando a interface Ethernet para projetos de conectividade.
- **Prototipagem de Sistemas Complexos**: Permite testar e validar soluções antes da produção.

---

### **Descrição Técnica da Placa DE1-SoC**

A **DE1-SoC** é uma placa de desenvolvimento versátil que permite a implementação de uma ampla gama de projetos, desde circuitos simples até sistemas multimídia complexos. Equipado com o FPGA Cyclone V SoC e um sistema de processamento ARM Cortex-A9, a placa combina lógica programável e processamento de alto desempenho para atender às necessidades de ensino, pesquisa e desenvolvimento.

---

#### **1. Dispositivo FPGA**

- **Modelo**: Cyclone V SoC 5CSEMA5F31C6
- **Processador Integrado**: Dual-core ARM Cortex-A9 (Hard Processor System - HPS)
- **Elementos Lógicos Programáveis**: 85.000
- **Memória Embutida**: 4.450 Kbits
- **PLLs Fracionais**: 6
- **Controladores de Memória**: 2 hard controllers

---

#### **2. Configuração e Depuração**

- **Dispositivo de Configuração Serial**: EPCS128 no FPGA.
- **Programação On-Board**: USB Blaster II integrado (conector USB tipo B normal).

---

#### **3. Dispositivos de Memória**

- **SDRAM no FPGA**: 64 MB (32M x 16).
- **DDR3 SDRAM no HPS**: 1 GB (2 x 256M x 16).
- **Slot para Cartão Micro SD**: Disponível no HPS.

---

#### **4. Comunicação**

- **Portas USB**:
  - 2 portas host USB 2.0 (interface ULPI, conectores USB tipo A).
  - UART para USB (conector USB Mini B).
- **Ethernet**: Suporte a 10/100/1000 Mbps.
- **PS/2**: Conexão para mouse/teclado.
- **Transmissor/Receptor IR**: Para projetos com comunicação infravermelha.

---

#### **5. Conectores**

- **Expansão GPIO**:
  - 2 conectores de 40 pinos (nível de tensão: 3,3V).
- **Entrada ADC**: Conector de 10 pinos.
- **Conector LTC**:
  - Suporte a SPI Master, I2C e interface GPIO.

---

#### **6. Recursos de Display**

- **VGA**: Conversor DAC de 24 bits para saída de vídeo.

---

#### **7. Áudio**

- **CODEC de 24 bits**:
  - Entradas: Line-in, Microfone.
  - Saída: Line-out.

---

#### **8. Entrada de Vídeo**

- **Decodificador de TV**:
  - Suporte a formatos NTSC, PAL e SECAM.
  - Conector para TV-in.

---

#### **9. Conversor Analógico-Digital (ADC)**

- **Taxa de Amostragem**: 500 KSPS.
- **Número de Canais**: 8.
- **Resolução**: 12 bits.
- **Faixa de Entrada Analógica**: 0 a 4,096 V.

---

#### **10. Botões, Chaves e Indicadores**

- **Botões do Usuário**: 4 (FPGA).
- **Chaves do Usuário**: 10 (FPGA).
- **LEDs do Usuário**:
  - 10 controlados pelo FPGA.
  - 1 controlado pelo HPS.
- **Botões de Reset**:
  - HPS_RST_n e HPS_WARM_RST_n.
- **Displays de Sete Segmentos**: 6.

---

#### **11. Sensores**

- **G-Sensor**: Integrado ao HPS para detecção de aceleração.

---

#### **12. Alimentação**

- **Entrada de Energia**: 12V DC.

---

### **Resumo**

A DE1-SoC é ideal para aplicações que exigem integração de lógica programável e processamento embarcado. Seus recursos abrangentes, incluindo interfaces de memória de alta velocidade, suporte a comunicação, e entrada/saída de vídeo e áudio, tornam-na uma plataforma versátil para projetos educacionais, prototipagem e desenvolvimento de sistemas embarcados. Para um curso introdutório, recomenda-se visitar a playlist: [DE1 online course](https://people.ece.cornell.edu/land/courses/ece5760/)
