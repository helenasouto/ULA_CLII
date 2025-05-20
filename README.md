# ULA_CLII
ULA desenvolvida em System Verilog no Quartus para operações aritméticas e lógicas básicas, como parte da disciplina de Circuitos Lógicos 2
# 🧮 ULA (Unidade Lógica e Aritmética) em Verilog

Este projeto implementa uma **ULA (Unidade Lógica e Aritmética)** em **Verilog**, desenvolvida no **Quartus Prime** como parte da disciplina de **Circuitos Lógicos 2**. A ULA é capaz de realizar operações aritméticas e lógicas básicas com dois operandos.

## 📚 Descrição do Projeto

- Desenvolvido em **Verilog**.
- Simulado e implementado no **Quartus Prime**.
- Realiza operações de acordo com o código de operação (`opcode`) selecionado.
- Os operandos e o código da operação são fornecidos via **entradas**, e o resultado é exibido na **saída**.
- Pode ser testada com switches e LEDs em uma **placa FPGA** (caso aplicável).

## 🔧 Operações Suportadas

A ULA implementa as seguintes operações:

- **Soma** (`A + B`)
- **Subtração** (`A - B`)
- **AND** lógico (`A & B`)
- **OR** lógico (`A | B`)
- **XOR** lógico (`A ^ B`)
- **NOT** (inversão de A)
- **Deslocamento à esquerda/direita**

> *A lista pode ser ajustada conforme as operações realmente implementadas no seu projeto.*

## 🧠 Tecnologias Utilizadas

- [Verilog HDL](https://en.wikipedia.org/wiki/Verilog)
- Quartus Prime
- Simulação com ModelSim (opcional)
- Placa FPGA (caso usada)

## 🚀 Como Usar

1. Abra o Quartus Prime.
2. Crie um novo projeto ou abra o projeto existente.
3. Adicione o(s) arquivo(s) `.v` com a implementação da ULA.
4. Compile o projeto.
5. (Opcional) Configure o **pin mapping** para sua placa FPGA.
6. Teste as operações por meio de **switches e LEDs** ou simulação.

## 📝 Licença

Este projeto está licenciado sob a Licença MIT. Veja o arquivo [LICENSE](./LICENSE) para mais detalhes.

## 👤 Autoria

Desenvolvido por Camil Nóbrega, Helena Souto, Marina Carvalho, Maria Júlia Leonella e Thaynara Magno como parte da disciplina de **Circuitos Lógicos 2**.

---

Este projeto pode servir como base para o desenvolvimento de processadores simples ou para estudo de arquiteturas digitais.
