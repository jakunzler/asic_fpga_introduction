# **Descrição da Placa Altera DE2**

A **Placa de Desenvolvimento e Educação Altera DE2** foi projetada para ser a ferramenta ideal para prototipagem avançada em áreas como multimídia, armazenamento e redes. Utilizando tecnologia de ponta em hardware e ferramentas de design assistido por computador (CAD), a DE2 expõe os desenvolvedores a uma ampla gama de tópicos no design digital.

## **Explorando as característica da placa DE2**

---

### **Finalidade e Aplicações**

A DE2 é uma plataforma rica em recursos, adequada para:

- **Ambientes Educacionais**:
  - Amplamente utilizada em laboratórios de universidades e faculdades para ensino de eletrônica digital e sistemas embarcados.
- **Projetos de Design Digital**:
  - Ideal para o desenvolvimento de projetos de médio a alto nível de complexidade.
- **Sistemas Digitais Sofisticados**:
  - Suporte para o desenvolvimento de sistemas completos e de alta performance.

---

### **Características Principais**

1. **Multimídia**:
   - Suporte para entradas e saídas de áudio e vídeo, permitindo o desenvolvimento de projetos interativos e aplicações de processamento de sinais.

2. **Armazenamento**:
   - Recursos de memória integrados que permitem lidar com aplicações de armazenamento e gerenciamento de dados.

3. **Redes**:
   - Interfaces que permitem o desenvolvimento de projetos voltados para comunicação e conectividade.

---

### **Materiais de Suporte**

A Altera oferece uma suíte completa de materiais de apoio para a DE2, incluindo:

- **Tutoriais**: Guias passo a passo para aprender a utilizar os recursos da placa.
- **Exercícios "Prontos para Ensinar"**: Laboratórios práticos que ajudam os instrutores a integrar a placa DE2 ao currículo acadêmico.
- **Demonstrações Ilustrativas**: Exemplos práticos que mostram como implementar e explorar os recursos avançados da DE2.

---

### **Por que Escolher a DE2?**

A DE2 é a escolha ideal para quem deseja:

- **Aprender**: Ferramenta educacional poderosa para ensinar design digital, processamento de sinais e sistemas embarcados.
- **Prototipar**: Plataforma robusta para prototipagem de projetos avançados.
- **Experimentar**: Explorar o potencial de design digital utilizando tecnologias de ponta em hardware e software.

Com sua ampla gama de recursos e materiais de suporte abrangentes, a DE2 se destaca como uma solução completa para ensino, pesquisa e desenvolvimento.

---

### **Descrição dos Componentes da Placa DE2**

A placa **DE2** foi projetada para atender às necessidades de desenvolvimento de projetos multimídia, permitindo aos usuários explorar tecnologias aplicadas em produtos amplamente utilizados na indústria, como DVDs, VCDs e MP3 players. A seleção de componentes foi cuidadosamente realizada para oferecer suporte a projetos que utilizam tecnologias populares e avançadas, proporcionando uma plataforma ideal para aprendizado e desenvolvimento.

---

### **Especificações Principais**

#### **1. FPGA e Configuração**

- **FPGA**: Altera Cyclone II 2C35 com 35.000 elementos lógicos (LEs).
- **Dispositivo de Configuração Serial**: Altera EPCS16 para Cyclone II 2C35.
- **Programação**: USB Blaster integrado para programação e controle via API.
- **Modos Suportados**: JTAG e AS (Active Serial).

---

#### **2. Memória**

- **SDRAM**: 8 MB (1M x 4 x 16).
- **SRAM**: 512 KB (256K x 16).
- **Flash**: 4 MB (expansível para 8 MB).
- **Slot para Cartão SD**: Para armazenamento externo e leitura de dados.

---

#### **3. Entradas e Saídas**

- **Botões de Pressão**: 4 botões para controle de entrada do usuário.
- **Chaves DPDT**: 18 chaves de dupla posição para configurações digitais.
- **LEDs**:
  - 9 LEDs verdes para saídas gerais.
  - 18 LEDs vermelhos para indicações adicionais.

---

#### **4. Display**

- **LCD**: Módulo LCD de 16 x 2 caracteres.
- **VGA**:
  - Conversor DAC de alta velocidade de 10 bits (triple DAC).
  - Conector de saída VGA para projetos gráficos.
- **Decodificador de TV**:
  - Suporte a padrões NTSC/PAL com conector TV-in.

---

#### **5. Áudio**

- **CODEC de Áudio de 24 bits**:
  - Entradas: Line-in e microfone.
  - Saída: Line-out.
  - Qualidade de som de CD.

---

#### **6. Comunicação**

- **Ethernet**: Controlador de rede 10/100 Mbps com conector.
- **USB**:
  - Controlador Host/Slave com conectores USB tipo A e tipo B.
- **RS-232**:
  - Transceptor com conector de 9 pinos.
- **PS/2**: Conector para teclado/mouse.
- **IrDA**: Transceptor para comunicação infravermelha.

---

#### **7. Conectores de Expansão**

- **Conectores GPIO**:
  - Dois conectores de 40 pinos com proteção por diodos, ideais para expandir o hardware e conectar dispositivos externos.

---

#### **8. Clocks**

- **Fontes de Clock**:
  - Oscilador de 50 MHz integrado.
  - Oscilador de 27 MHz proveniente do decodificador de TV.

---

### **Materiais de Suporte e Exemplos**

O CD-ROM incluído com a placa **DE2 Lab** contém exemplos e códigos-fonte para explorar os recursos da placa. Entre os exemplos disponíveis estão:

- Controladores de SDRAM e Flash.
- Reprodutor de música com qualidade de CD.
- Laboratórios de VGA e TV.
- Leitor de cartões SD.
- Comunicação RS-232/PS-2.
- Projetos com NIOS II e API do Painel de Controle.
