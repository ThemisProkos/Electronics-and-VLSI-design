# MOS Transistor I-V Characteristics Analysis

## Project Overview
This project focuses on the DC analysis and characterization of **nMOS** and **pMOS** transistors using SPICE simulations.The goal is to extract and visualize the current-voltage ($I-V$) relationships ($I_{DS}$ vs $V_{DS}$) across different manufacturing technologies and environmental conditions.

## Technical Specifications
The analysis covers three distinct fabrication technologies with their respective supply voltages ($V_{DD}$):
* **TSMC 0.35 μm** ($V_{DD} = 3.3V$) 
* **TSMC 0.25 μm** ($V_{DD} = 2.5V$) 
* **TSMC 180 nm** ($V_{DD} = 1.8V$) 

[cite_start]**Note:** The SPICE models for each technology are directly embedded within the simulation files.

Simulations were performed for two operating temperatures:
* **27°C** (Nominal) 
* **70°C** (Operating Temperature) 

## Objectives
The project analyzes key transistor behaviors:
1. **Operating Regions:** Identification of **Cut-off**, **Linear (Triode)**, and **Saturation** regions.
2. **Channel Length Modulation:** Observation of $I_{DS}$ variation in the saturation region.
3. **Velocity Saturation:** Analysis of carrier velocity saturation effects in deep-submicron nodes.

## File Structure & Usage
All project files are located in this directory for direct access:

* **`*.cir`**: SPICE netlist files containing the circuit description and embedded technology models .
* **`*.png`**: Plot settings for LTspice to correctly visualize the I-V curves .
* **`Final_Report.pdf`**: The complete technical report detailing the theoretical analysis and findings.
* **`*.png` / `*.jpg`**: Screenshots of the simulation plots for quick preview.

## How to Run
1. Open any `.cir` file in **LTspice**.
2. Click the **Run** button.
3. The simulator will use the corresponding `.plt` file to display the $I_{DS} = f(V_{DS})$ curves for various $V_{GS}$ steps .

---
*Developed as part of the "Introduction to Electronics" (ECE214) lab at the University of Thessaly.*
