# MOS Transistor I-V Characteristics Analysis

## Project Overview
This project focuses on the DC analysis and characterization of **nMOS** and **pMOS** transistors using SPICE simulations. The goal is to extract and visualize the current-voltage ($I-V$) relationships ($I_{DS}$ vs $V_{DS}$) across different manufacturing technologies and environmental conditions.

## Technical Specifications
The analysis covers three distinct fabrication technologies with their respective supply voltages ($V_{DD}$):
* **TSMC 0.35 μm** ($V_{DD} = 3.3V$) 
* **TSMC 0.25 μm** ($V_{DD} = 2.5V$) 
* **TSMC 180 nm** ($V_{DD} = 1.8V$) 

Simulations were performed for two distinct operating temperatures:
* **27°C** (Nominal) 
* **70°C** (High Temperature) 

## Objectives
The simulation aims to identify and analyze key transistor behaviors:
1. **Operating Regions:** Identification of **Cut-off**, **Linear (Triode)**, and **Saturation** regions in the $I-V$ curves.
2.**Channel Length Modulation:** Observation of the Early effect in the saturation region where $I_{DS}$ increases with $V_{DS}$.
3. **Velocity Saturation:** Analysis of carrier velocity saturation effects, particularly in shorter channel technologies (e.g., 180nm).

## Circuit Description
The simulation environment uses a standard configuration to sweep voltages:
* **Input Voltage ($V_{GS}$):** Stepped from 0V to $V_{DD}$.
* **Drain-Source Voltage ($V_{DS}$):** Swept from 0V to $V_{DD}$.
* **Models:** SPICE Level 3 models were used for both NMOS and PMOS devices.

## Repository Structure
* `/src`: Contains the SPICE netlists (`.sp`) and LTspice files (`.asc`).
* `/models`: Includes the TSMC technology library files.
* `/plots`: Graphical representations of the $I-V$ characteristics exported from the simulator.
* `/pdf`:Contains the final report of the project.

## How to Run
1. Load the simulation files in **LTspice** or any SPICE-compatible simulator.
2. Ensure the model libraries (e.g., `tsmc035.sp`) are in the correct path or included via the `.INC`.
3. Run the `.DC` analysis to generate the curves.

---
*Note: This project was developed as part of the "Introduction to Electronics" course at the University of Thessaly.*
