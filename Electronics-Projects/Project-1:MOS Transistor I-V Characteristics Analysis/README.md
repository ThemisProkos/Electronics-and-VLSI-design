# MOS Transistor I-V Characteristics Analysis

## Project Overview
This project focuses on the DC analysis and characterization of **nMOS** and **pMOS** transistors using SPICE simulations. The goal is to extract and visualize the current-voltage ($I-V$) relationships ($I_{DS}$ vs $V_{DS}$) across different manufacturing technologies and environmental conditions.

## Technical Specifications
The analysis covers three different fabrication technologies. Note that **the SPICE models for each technology are directly embedded within the `.cir` files**, so no external library files are required.

* **TSMC 0.35 μm** ($V_{DD} = 3.3V$)
* **TSMC 0.25 μm** ($V_{DD} = 2.5V$) 
* **TSMC 180 nm** ($V_{DD} = 1.8V$)

The simulations account for temperatures of **27°C** and **70°C**.


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
* `/simulations`: Contains the SPICE netlist files (`.cir`) and the corresponding plot settings (`.plt`). Note that the TSMC device models are embedded within the `.cir` files .
* `/plots`: Graphical representations (screenshots) of the $I-V$ characteristics ($I_{DS}$ vs $V_{DS}$) for various $V_{GS}$ values and temperatures.
* `/report`: Contains the final project report in PDF format, detailing the theoretical analysis and findings.

## How to Run
1. Open the `.cir` files directly in **LTspice**.
2. Click the **Run** button to execute the simulation.
3. The `.plt` files included in the repository will automatically format the waveform viewer to display the $I_{DS}$ vs $V_{DS}$ curves as intended.
4. For a detailed analysis of the results, you can refer to the `Final_Report.pdf` located in the root folder.

*Note: This project was developed as part of the "Introduction to Electronics" course at the University of Thessaly.*
