# CMOS Inverter Characterization and Analysis

This repository contains the simulation files and the final report for a laboratory exercise focused on the characterization of a CMOS inverter using **LTspice**.

## 📌 Project Overview
The project investigates the behavior of a CMOS inverter based on various parameters. Key analysis areas include:
* **VTC (Voltage Transfer Characteristic):** Analyzing the impact of different $k_n/k_p$ ratios on the switching threshold ($V_M$) and noise margins.
* **Noise Tolerance:** Calculating specific transistor sizing ($W_n/W_p$) to achieve a 45% noise tolerance on Logic 0.
* **Supply Voltage Sensitivity:** Investigating how the VTC and inverter gain evolve as $V_{DD}$ scales from 2.5V down to 0.07V.
* **Signal Restoration:** Evaluating the regenerative properties of cascaded inverter chains (4 stages) and their ability to restore logic levels from noisy inputs ($V_{IL}, V_{IH}$).

## 📁 Repository Structure
* `/cir_files`: LTspice circuit schematics and netlists used for DC Sweep and Operating Point (.op) analysis.
* `/plots`: High-resolution PNG exports of VTC curves, derivatives ($dV_{out}/dV_{in}$), and signal restoration steps.
* `CMOS_Inverter_Report.pdf`: The complete technical report document (compiled via LaTeX).

## 🛠 Tools Used
* **LTspice:** For circuit simulation and data extraction.
* **LaTeX:** For professional technical reporting and mathematical typesetting.

## 🚀 Key Findings
1. **Symmetry:** Achieved a perfectly symmetric VTC ($V_M = V_{DD}/2$) by sizing $W_p \approx 3.4 \times W_n$, compensating for hole vs. electron mobility differences.
2. **Robustness:** Demonstrated that a chain of inverters effectively acts as a signal regenerator, providing full logic swing even when the input is at the edge of the noise margin limits.
3. **Operational Limits:** Identified the minimum functional supply voltage ($V_{DD} \approx 70mV$) before the inverter loses its switching characteristics.

---
*Developed as part of the [Your Course Name/Microelectronics] Laboratory.*
