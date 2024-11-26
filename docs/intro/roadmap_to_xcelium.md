# Roadmap to Install and Use Xcelium for Simulation

## What is Xcelium?

**Xcelium** is Cadence’s advanced simulation platform designed for high-performance digital design and verification. It’s primarily used for simulation rather than synthesis or implementation. For synthesis and implementation, Cadence provides other tools like **Genus** (for synthesis) and **Innovus** (for physical implementation). However, if your goal is to use **Xcelium** for **simulation** and to complement it with synthesis and implementation tools from Cadence, here’s a step-by-step roadmap to get started.

---

### **Step 1: Obtain Licensing and Installation Package**

- **Obtain License**: Xcelium requires a valid license from Cadence. Make sure your organization or university provides access to Cadence’s tools.
- **Download Xcelium**: Visit Cadence’s **support portal** or contact your IT team to get access to the Xcelium software package. The tool is generally distributed as a **.tar.gz** file.

---

### **Step 2: System Requirements**

- Ensure your system meets the hardware and software requirements. Typical prerequisites include:
  - **Supported OS**: Xcelium primarily runs on **Linux** distributions (RHEL, CentOS, SUSE).
  - **Memory**: At least 16 GB RAM is recommended for larger designs.
  - **Disk Space**: Make sure there’s at least **10 GB of free disk space** for installation, plus additional space for design and output files.

---

### **Step 3: Install Xcelium**

See the [InstallScape Cadence Products](./install_scape_cadence_products.md) file for specific instructions.

---

### **Step 4: Verify Installation**

- Check whether Xcelium is installed correctly by running:

  ```bash
  xrun -version
  ```

  - This should display the installed version of Xcelium.

---

### **Step 5: Running Xcelium for Simulation**

Xcelium uses the **`xrun`** command to compile and simulate designs. Here's how you can run simulations with it.

#### a. **Prepare Your Verilog/VHDL Files**

- Organize your design files into directories, and ensure they are properly structured for simulation.
  - For example:

    ```plaintext
    my_project/
    ├── rtl/
    │   ├── top_module.v
    │   └── alu.v
    └── tb/
        └── tb_top_module.v
    ```

#### b. **Compile the Design**

- To compile the Verilog or VHDL files, use the following command:

  ```bash
  xrun rtl/*.v tb/*.v
  ```

  - This compiles both the **RTL** and **testbench** files.
  - The output will show compilation logs and errors if any exist.

#### c. **Run the Simulation**

- After compiling the files, run the simulation using the **`xrun`** command:

  ```bash
  xrun -R rtl/*.v tb/*.v
  ```

  - The `-R` option runs the simulation after compilation.
  - You can include specific options such as enabling waveform dumps or simulation time limits:

    ```bash
    xrun -R -access +rwc -timescale 1ns/1ps -input testbench.tcl
    ```

#### d. **Waveform Analysis**

- To generate waveforms for analysis, include the **waveform dump** options:

  ```bash
  xrun -R -access +rwc -gui
  ```

  - This will open the **SimVision** GUI (part of the Cadence suite) where you can observe signals and analyze simulation results.

---

### **Step 6: Using Other Tools for Synthesis and Implementation**

While Xcelium handles **simulation**, for **synthesis** and **implementation**, you’ll need tools like **Genus** (for logic synthesis) and **Innovus** (for place-and-route implementation). Here’s a brief overview of the process for these tools:

#### a. **Synthesis with Genus**

1. **Invoke Genus**:

   ```bash
   genus
   ```

2. **Prepare Synthesis Script**:
   Create a **TCL script** for synthesizing your design. It includes reading design files, defining constraints, and generating netlists:

   ```tcl
   set TOP_LEVEL "top_module"
   set RTL_FILES [list "rtl/top_module.v" "rtl/alu.v"]
   read_hdl $RTL_FILES
   elaborate $TOP_LEVEL
   synthesize -to_mapped
   write_hdl -mapped > synthesized_netlist.v
   ```

3. **Run Synthesis**:
   Execute the synthesis script in **Genus**:

   ```bash
   genus -f synthesis_script.tcl
   ```

#### b. **Implementation with Innovus**

1. **Invoke Innovus**:

   ```bash
   innovus
   ```

2. **Prepare Implementation Script**:
   Write a script to perform **place and route**:

   ```tcl
   read_netlist synthesized_netlist.v
   floorplan -create
   place_design
   route_design
   write_def placed_and_routed.def
   ```

3. **Run the Script**:

   ```bash
   innovus -f implementation_script.tcl
   ```

---

### **Step 7: Simulation with Back-Annotated Netlist**

After synthesis and place-and-route, the design can be simulated again using Xcelium with the **back-annotated netlist** generated during the implementation step.

- **Back-Annotated Simulation**:

   ```bash
   xrun -R synthesized_netlist.v tb/tb_top_module.v
   ```

This ensures that your simulation reflects the synthesized and implemented design, verifying the timing and functionality with real hardware constraints.

---

### **Step 8: Documentation and Debugging**

- **Logs and Waveforms**: During simulation and synthesis, always check the log files for warnings, errors, and performance details.
- **Waveform Debugging**: Use **SimVision** or a similar GUI for detailed debugging of simulation waveforms.

---

### **Final Notes**

- **License**: Ensure you have valid licenses for all Cadence tools.
- **Cadence Help**: Use Cadence documentation and user forums for detailed tool-specific usage.
- **Script-Based Flow**: Writing synthesis, simulation, and implementation scripts in **TCL** is highly recommended for reproducibility and batch processing.

This roadmap should give you a solid foundation for installing and using **Xcelium** alongside other Cadence tools for **simulation**, **synthesis**, and **implementation**.
