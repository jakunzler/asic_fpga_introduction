# First Tutorial

Criar um projeto "blink" (piscar um LED) na placa **DE0** para começar a trabalhar com FPGA e entender o fluxo básico de desenvolvimento. Segue um guia passo a passo para criar e implementar o projeto:

## Roteiro

---

### **1. Configurar o Ambiente de Desenvolvimento**

#### **Instalar as Ferramentas Necessárias**

1. **Quartus Prime Lite Edition**:
   - Faça o [download e instale o software da Intel Quartus Prime Lite Edition](https://www.intel.com/content/www/us/en/software-kit/660907/intel-quartus-prime-lite-edition-design-software-version-20-1-1-for-windows.html), compatível com a DE0.
   - Certifique-se de selecionar o suporte ao FPGA Cyclone III durante a instalação.

2. **Drivers USB Blaster**:
   - Conecte a placa DE0 ao computador e instale os drivers do USB Blaster (se não forem instalados automaticamente).

---

### **2. Criar o Projeto no Quartus Prime**

#### **Etapas no Quartus**

1. **Abrir o Quartus Prime**:
   - Inicie o Quartus e clique em **File > New Project Wizard**.

2. **Configurar o Novo Projeto**:
   - Defina um diretório para o projeto, por exemplo, `C:/Projects/DE0_Blink`.
   - Nomeie o projeto como `DE0_Blink`.
   - Clique em **Next**.

3. **Selecionar o FPGA**:
   - Na lista de dispositivos, escolha:
     - **Family**: Cyclone III
     - **Device**: EP3C16F484C6 (o FPGA da placa DE0).
   - Clique em **Next**.

4. **Adicionar Arquivos**:
   - Nesta etapa, deixe os campos em branco, pois criaremos o arquivo de design HDL no próximo passo.
   - Clique em **Next > Finish**.

---

### **3. Escrever o Código HDL**

#### **Criar o Arquivo Verilog**

1. No Quartus, clique em **File > New > Verilog HDL File**.
2. Adicione o código abaixo para criar um contador simples que alterna o estado do LED:

    ```verilog
    module blink (
        input wire clk,        // Entrada do clock
        output reg led         // Saída para o LED
    );

        reg [23:0] counter;    // Contador de 24 bits

        // Sempre que o clock tiver uma borda de subida, incrementa o contador
        always @(posedge clk) begin
            counter <= counter + 1;
            if (counter == 24'hFFFFFF) begin
                led <= ~led;   // Alterna o LED
                counter <= 0;  // Reinicia o contador
            end
        end

    endmodule
    ```

3. Salve o arquivo como `blink.v`.

#### **Criar o Top-Level Design**

1. Crie um novo arquivo **Verilog** para definir as conexões físicas com a placa.
2. Adicione o seguinte código:

    ```verilog
    module top (
        input wire CLOCK_50,  // Clock de 50 MHz da placa
        output wire LEDR0     // LED vermelho 0 na DE0
    );

        blink u_blink (
            .clk(CLOCK_50),
            .led(LEDR0)
        );

    endmodule
    ```

3. Salve o arquivo como `top.v`.

---

### **4. Configurar o Mapeamento de Pinos**

1. No Quartus, vá em **Assignments > Pin Planner**.
2. Configure os pinos físicos da placa:
   - `CLOCK_50` para o pino `PIN_N2` (entrada do clock de 50 MHz).
   - `LEDR0` para o pino `PIN_R20` (LED vermelho 0).
3. Salve as alterações no **Pin Planner**.

---

### **5. Compilar o Projeto**

1. Clique em **Processing > Start Compilation**.
2. Aguarde a compilação terminar. Certifique-se de que não há erros na aba **Messages**.

---

### **6. Programar a Placa**

1. Conecte a placa DE0 ao computador usando o cabo USB Blaster.
2. Ligue a placa usando o adaptador de energia.
3. No Quartus, clique em **Tools > Programmer**:
   - Selecione o hardware como **USB-Blaster**.
   - Clique em **Add File** e selecione o arquivo `.sof` gerado na compilação (geralmente em `output_files`).
   - Clique em **Start** para programar a FPGA.

---

### **7. Verificar o Funcionamento**

- Após a programação, o LED vermelho 0 (`LEDR0`) na placa DE0 começará a piscar com uma frequência reduzida, controlada pelo contador.

---

### **Explicação do Projeto**

- **Clock**: A entrada `CLOCK_50` fornece um sinal de clock de 50 MHz.
- **Contador**: Um contador de 24 bits é usado para dividir o clock, reduzindo a frequência do sinal enviado ao LED.
- **Alternância do LED**: Sempre que o contador atinge o valor máximo (`24'hFFFFFF`), o LED alterna entre ligado e desligado.

---

### **8. Próximos Passos**

- **Alterar Frequência**: Ajuste o tamanho do contador para alterar a frequência de piscagem do LED.
- **Adicionar LEDs**: Modifique o código para controlar múltiplos LEDs.
- **Explorar Mais Recursos**: Integre chaves, botões ou displays para criar projetos mais complexos.
