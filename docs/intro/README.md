# **Getting Started**

Welcome to the ASIC and FPGA repository! This guide will help you set up the environment and start exploring the contents and projects.

---

## 🛠️ Environment Requirements

Before you begin, make sure you have the following tools installed:

### HDL Tools

- **ModelSim** (or alternatives like Xcelium, Icarus Verilog)
- **Quartus Prime** (Intel FPGAs)
- **Vivado** (Xilinx FPGAs)

### Simulation and Testing Tools

- **Icarus Verilog** (an open-source Verilog simulator)
- **GTKWave** (for visualizing simulated signals)

### Other Dependencies

- **Git** (to clone the repository and manage changes):

  ```bash
  sudo apt install git       # Linux
  brew install git           # macOS
  winget install --id Git.Git -e --source winget  # Windows
  ```

- **Python** (if needed for automation or additional scripts):

  ```bash
  sudo apt install python3   # Linux
  brew install python3       # macOS
  winget install --id Python.Python.3 -e --source winget  # Windows
  ```

---

## 📦 Cloning the Repository

1. Open your terminal and run:

   ```bash
   git clone https://github.com/jakunzler/asic_fpga_introduction.git
   cd asic_fpga_introduction
   ```

2. Navigate to the appropriate directory:
   - For HDL codes:

     ```bash
     cd src/
     ```

   - For documentation:

     ```bash
     cd docs/
     ```

---

## 📘 Repository Structure

- **`src/`**: Contains HDL source codes (Verilog/VHDL) for ASICs and FPGAs.
  - Subdirectories:
    - **asic/**: Codes related to ASIC design.
    - **fpga/**: Codes and testbenches for FPGA.
- **`examples/`**: Practical project examples.
- **`docs/`**: Documentation and tutorials.
- **`tests/`**: Files for testing and validation.

---

## 🚀 Running an Example Project

Here’s how to run the included example of a multiplexer.

### **Step 1: Compile the Code**

1. Navigate to the project directory:

   ```bash
   cd src/fpga/
   ```

2. Compile the code using ModelSim (or another HDL simulator):

   ```bash
   vlog multiplexor.v multiplexor_test.v
   ```

### **Step 2: Run the Simulation**

1. Start the simulation:

   ```bash
   vsim multiplexor_test
   ```

2. Run all the tests:

   ```tcl
   run -all
   ```

3. Check the results in the terminal or visualize the signals in the **Waveform**.

---

## 📝 Creating Your First Project

1. **Create an HDL module**:
   - Write a module in Verilog or VHDL inside the `src/` directory.

2. **Add a Testbench**:
   - Create a test file to validate your module's behavior.

3. **Compile and Simulate**:
   - Follow the steps above to compile and simulate.

4. **Add Documentation**:
   - Explain your module’s functionality in a Markdown file within the `docs/` directory.

---

## 🛠️ Automating Simulations with Makefile

Use the `Makefile` (if included) to simplify task execution:

1. To compile and simulate:

   ```bash
   make simulate
   ```

2. To clean up generated files:

   ```bash
   make clean
   ```

---

## 🤝 Contributing

If you’d like to contribute, check out [CONTRIBUTING.md](../../CONTRIBUTING.md) for guidelines on getting started.

---

## 📄 Additional Documentation

- Learn how to install the Cadence product management tool, [Install Scape](./install_scape_cadence_products.md).
- For a quick introduction to Verilog HDL, visit [Roadmap to Verilog](./roadmap_to_verilog.md).
- For a quick introduction to VHDL HDL, visit [Roadmap to VHDL](./roadmap_to_vhdl.md).
- [FPGA Tools](../references/fpga-tools.md).

---

Follow this guide to start exploring the projects and developing new designs! If you have any questions or need support, open an issue in the repository or get in touch. 😊
