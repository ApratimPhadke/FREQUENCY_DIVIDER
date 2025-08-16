# Verilog Frequency Divider

This repository contains the Verilog source code and implementation files for a **configurable frequency divider** designed for FPGAs. The project was developed using **Xilinx Vivado Design Suite**.

---

## 📌 Project Overview
The goal of this project is to design a digital circuit that:
- Takes a high-frequency input clock (`CLK`)
- Generates a lower-frequency output clock (`clk_out`)
- Supports a configurable division factor (`N`)

**Core files:**
- `CLK_DIVIDER.v` – Main frequency divider logic
- `tb_freq_divider.v` – Testbench for functional verification

---

## 🔧 RTL Schematic
After synthesis, the RTL schematic consists of:
- Counter
- Comparator
- Flip-flops

This implements the frequency division logic efficiently.

<img width="1158" height="768" alt="schmatic " src="https://github.com/user-attachments/assets/6146d5f1-ae34-4b42-900e-9a76c217033c" />

---

## 📊 Simulation Waveform
The design was verified using behavioral simulation.  
The waveform confirms:
- Input clock (`CLK`)
- Reset (`rst`)
- Division factor (`N`)
- Output divided clock (`clk_out`)

  <img width="1854" height="1168" alt="waveform" src="https://github.com/user-attachments/assets/522ea468-96c0-454d-9995-9d04b02d5d98" />


---

## 🛠️ Implementation Reports (Vivado)
<img width="1570" height="694" alt="device" src="https://github.com/user-attachments/assets/e676d89e-8fd7-40fc-8135-ca1bea4fc073" />


### Device Utilization
Report shows placement of logic resources on the FPGA fabric (Artix-7 series).

### Power Report
Estimated power consumption:
- **Total On-Chip Power:** 0.084 W  
- **Dynamic:** 0.000 W (0%)  
- **Device Static:** 0.084 W (100%)
  <img width="1854" height="1168" alt="power" src="https://github.com/user-attachments/assets/3317e0fd-1486-48a5-bd2f-4a51e6a9bdc8" />


**Thermal Details:**
- Junction Temperature: 25.4 °C  
- Thermal Margin: 59.6 °C (12.9 W)  
- Effective BJA: 4.6 °C/W  
- Confidence Level: High  

### Timing Report
No user-defined constraints were applied.  
The design passed implementation without timing violations under default tool settings.

| Category      | WNS | TNS | Failing Endpoints | Total Endpoints |
|---------------|-----|-----|-------------------|-----------------|
| Setup         | N/A | N/A | N/A               | N/A             |
| Hold          | N/A | N/A | N/A               | N/A             |
| Pulse Width   | N/A | N/A | N/A               | N/A             |

<img width="1854" height="1168" alt="time" src="https://github.com/user-attachments/assets/3a3059e8-3b02-4b47-9b07-d010a5358d74" />


---

## 🚀 How to Run
1. Open **Vivado**  
2. Create a new project and add:
   - `CLK_DIVIDER.v`
   - `tb_freq_divider.v`
3. Run simulation to verify functionality  
4. Synthesize and implement to generate reports  


## 📜 License
This project is open-source and free to use for educational and research purposes.
