# digital-design-building-blocks
Reusable Verilog HDL components and IP cores designed for FPGA synthesis and simulation. Includes memory architectures and clock management modules.
# FPGA Cores and Modules

A curated library of reusable, synthesizable Verilog HDL modules and IP cores for digital design, FPGA deployment, and simulation. Each module includes a fully functional RTL design and a self-checking testbench.

##  Repository Structure

The project is organized into modular directories to keep RTL source code and testbenches separate:

```text
├── README.md
├── clock_modules/      # Clock dividers, PLL wrappers, and pulse generators
│   ├── rtl/            # Synthesizable Verilog source code
│   └── tb/             # Testbenches and simulation files
└── memory_cores/       # RAM, ROM, and FIFO architectures
    ├── rtl/
    └── tb/
```

##  Modules Overview

### 1. Memory Cores (`memory_cores/`)
*   **Single-Port RAM:** Synchronous read/write memory block with configurable data width and address depth.
*   **Features:** Parameterized design, synchronous reset, and write-enable control logic.

### 2. Clock Management (`clock_modules/`)
*   **Clock Divider:** Even/odd integer clock frequency divider using a counter-based architecture.
*   **Features:** Configurable division factor via parameters and synchronous reset.

##  Getting Started

### Prerequisites
To simulate or synthesize these modules, you will need:
*   **Simulation:** Icarus Verilog (iVerilog), ModelSim, or Vivado XSIM.
*   **Waveform Viewer:** GTKWave (optional, for viewing `.vcd` files).
*   **Synthesis:** AMD/Xilinx Vivado, Intel Quartus, or Yosys.

### Quick Simulation Example (Using iVerilog)
To simulate the RAM module:
```bash
cd memory_cores
iverilog -o ram_sim rtl/single_port_ram.v tb/tb_single_port_ram.v
vvp ram_sim
```

##  Future Roadmap
* [ ] Add a Synchronous FIFO core.
* [ ] Add a Dual-Port RAM variant.
* [ ] Implement an I2C/SPI master controller module.

##  License
This project is licensed under the MIT License - see the LICENSE file for details.
