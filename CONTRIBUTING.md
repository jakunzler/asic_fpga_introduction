# Contribuindo para o Repositório ASIC e FPGA

Obrigado por considerar contribuir para este projeto! Suas contribuições são muito importantes. Este documento contém diretrizes para garantir que o processo de contribuição seja claro e eficaz.

---

## 💡 Como Contribuir

1. **Faça um Fork do Repositório**:
   - Clique no botão **Fork** no topo direito da página do GitHub.

2. **Clone o Repositório Forkado**:

   ```bash
   git clone https://github.com/jakunzler/asic_fpga_introduction.git
   cd asic_fpga_introduction
   ```

3. **Crie uma Nova Branch**:
   - Use nomes descritivos para a branch:

     ```bash
     git checkout -b feature/<new-functionality>
     ```

4. **Faça Suas Alterações**:
   - Certifique-se de seguir as diretrizes de estilo do projeto (Verilog, VHDL, documentação, etc.).
   - Adicione comentários claros e úteis ao seu código.

5. **Teste Seu Código**:
   - Verifique se o código HDL funciona e passa todos os testes.
   - Use ferramentas como ModelSim, Xcelium ou Icarus Verilog para validar o design.

6. **Faça o Commit das Alterações**:
   - Escreva mensagens de commit descritivas:

     ```bash
     git add .
     git commit -m "feat: add 8 bits multiplexer"
     ```

7. **Envie Sua Branch para o Fork**:

   ```bash
   git push origin feature/<new-functionality>
   ```

8. **Abra um Pull Request**:
   - Vá até o repositório original.
   - Clique em **Pull Requests > New Pull Request**.
   - Inclua uma descrição detalhada do que foi alterado ou adicionado.

---

## 📋 Diretrizes de Estilo de Código

1. **Verilog/VHDL**:
   - Use indentação de 2 ou 4 espaços.
   - Use nomes claros e descritivos para sinais e módulos.
   - Adicione comentários explicativos para partes críticas do código.

2. **Documentação**:
   - Escreva em inglês ou português.
   - Use Markdown para novos documentos.
   - Organize a documentação no diretório `docs/`.

3. **Commits**:
   - Escreva mensagens curtas e claras no formato:

     ```plaintext
     Tipo: Descrição do que foi feito
     ```

     Exemplos:
     - `fix: fix counter module bug`
     - `feat: add multiplexer testbench`

---

## 🚀 Ferramentas Recomendadas

- **Simulação HDL**:
  - ModelSim
  - Xcelium
  - Icarus Verilog
- **Documentação**:
  - Markdown para arquivos `.md`.
  - MkDocs ou Docusaurus para documentação navegável.

---

## 🛠️ Requisitos para Contribuição

- Certifique-se de que suas alterações não quebram o código existente.
- Adicione um testbench para qualquer novo módulo ou funcionalidade.
- Resolva todos os conflitos antes de enviar o Pull Request.

---

## 🤝 Código de Conduta

Ao contribuir para este projeto, você deve concordar em respeitar os princípios definidos no [Código de Conduta](CODE_OF_CONDUCT.md).

---

## 📞 Dúvidas ou Suporte

Se você tiver dúvidas sobre como contribuir, entre em contato abrindo uma **issue** no repositório ou envie um e-mail para [k_jonasaugusto@ufg.br].

Obrigado por contribuir! 😊
