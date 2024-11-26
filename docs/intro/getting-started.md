# Getting Started

Bem-vindo ao repositório de ASIC e FPGA! Este guia irá ajudá-lo a configurar o ambiente e começar a explorar os conteúdos e projetos.

---

## 🛠️ Requisitos de Ambiente

Antes de começar, certifique-se de ter as ferramentas abaixo instaladas:

### Ferramentas HDL

- **ModelSim** (ou alternativa como Xcelium, Icarus Verilog)
- **Quartus Prime** (Intel FPGAs)
- **Vivado** (Xilinx FPGAs)

### Ferramentas de Simulação e Teste

- **Icarus Verilog** (alternativa open-source para Verilog)
- **GTKWave** (visualização de sinais simulados)

### Outras Dependências

- **Git** (para clonar o repositório e gerenciar alterações):

  ```bash
  sudo apt install git       # Linux
  brew install git           # macOS
  winget install --id Git.Git -e --source winget  # Windows
  ```

- **Python** (se for necessário para automação ou scripts adicionais):

  ```bash
  sudo apt install python3   # Linux
  brew install python3       # macOS
  winget install --id Python.Python.3 -e --source winget  # Windows
  ```

---

## 📦 Clonando o Repositório

1. Abra o terminal e execute:

   ```bash
   git clone https://github.com/jakunzler/asic_fpga_introduction.git
   cd asic_fpga_introduction
   ```

2. Navegue para o diretório correto:
   - Para os códigos HDL:

     ```bash
     cd src/
     ```

   - Para a documentação:

     ```bash
     cd docs/
     ```

---

## 📘 Estrutura do Repositório

- **`src/`**: Contém os códigos-fonte HDL (Verilog/VHDL) para ASICs e FPGAs.
  - Subdiretórios:
    - **asic/**: Códigos relacionados ao design ASIC.
    - **fpga/**: Códigos e testbenches para FPGA.
- **`examples/`**: Exemplos de projetos práticos.
- **`docs/`**: Documentação e tutoriais.
- **`tests/`**: Arquivos para teste e validação.

---

## 🚀 Rodando um Projeto de Exemplo

Aqui está como rodar o multiplexador de exemplo incluído no repositório.

### **Passo 1: Compile o Código**

1. Navegue até o diretório do projeto:

   ```bash
   cd src/fpga/
   ```

2. Compile o código usando o ModelSim (ou outro simulador HDL):

   ```bash
   vlog multiplexor.v multiplexor_test.v
   ```

### **Passo 2: Execute a Simulação**

1. Inicie a simulação:

   ```bash
   vsim multiplexor_test
   ```

2. Execute todos os testes:

   ```tcl
   run -all
   ```

3. Verifique os resultados no terminal ou visualize os sinais no **Waveform**.

---

## 📝 Criando Seu Primeiro Projeto

1. **Crie um módulo HDL**:
   - Escreva um módulo em Verilog ou VHDL no diretório `src/`.

2. **Adicione um Testbench**:
   - Crie um arquivo de teste para validar o comportamento do módulo.

3. **Compile e Simule**:
   - Siga os passos anteriores para compilar e rodar a simulação.

4. **Adicione Documentação**:
   - Explique o funcionamento do seu módulo em um arquivo Markdown no diretório `docs/`.

---

## 🛠️ Automatizando Simulações com Makefile

Use o arquivo `Makefile` (se incluído) para simplificar a execução de tarefas:

1. Para compilar e simular:

   ```bash
   make simulate
   ```

2. Para limpar os arquivos gerados:

   ```bash
   make clean
   ```

---

## 🤝 Contribuindo

Se você deseja contribuir, consulte o [CONTRIBUTING.md](CONTRIBUTING.md) para obter diretrizes sobre como começar.

---

## 📄 Documentação Adicional

- Veja como instalar a ferramenta de gerenciamento dos produtos Cadence, o [Install Scape](./install_scape_xcelium_cadence.md).
- Para uma rápida imersão na linguagem de descrição de hardware Verilog, acesse [Introdução ao Verilog](./roadmap_to_verilog.md).
- Para uma rápida imersão na linguagem de descrição de hardware VHDL, acesse [Introdução ao VHDL](./roadmap_to_vhdl.md)
- [Ferramentas para FPGA](../references/fpga-tools.md)

---

Siga este guia para começar a explorar os projetos e desenvolver novos designs! Se tiver dúvidas ou precisar de suporte, abra uma issue no repositório ou entre em contato. 😊
