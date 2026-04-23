# MOS Transistor I-V Characteristics Analysis

## Project Overview
[cite_start]This project focuses on the DC analysis and characterization of **nMOS** and **pMOS** transistors using SPICE simulations[cite: 36]. [cite_start]The goal is to extract and visualize the current-voltage ($I-V$) relationships ($I_{DS}$ vs $V_{DS}$) across different manufacturing technologies and environmental conditions[cite: 35, 159].

## Technical Specifications
[cite_start]The analysis covers three distinct fabrication technologies with their respective supply voltages ($V_{DD}$)[cite: 159, 160]:
* [cite_start]**TSMC 0.35 μm** ($V_{DD} = 3.3V$) [cite: 132, 160]
* [cite_start]**TSMC 0.25 μm** ($V_{DD} = 2.5V$) [cite: 159, 160]
* [cite_start]**TSMC 180 nm** ($V_{DD} = 1.8V$) [cite: 159, 160]

[cite_start]Simulations were performed for two distinct operating temperatures[cite: 159]:
* [cite_start]**27°C** (Nominal) [cite: 146]
* [cite_start]**70°C** (High Temperature) [cite: 146]

## Objectives
[cite_start]The simulation aims to identify and analyze key transistor behaviors[cite: 158]:
1. [cite_start]**Operating Regions:** Identification of **Cut-off**, **Linear (Triode)**, and **Saturation** regions in the $I-V$ curves[cite: 164].
2. [cite_start]**Channel Length Modulation:** Observation of the Early effect in the saturation region where $I_{DS}$ increases with $V_{DS}$[cite: 165].
3. [cite_start]**Velocity Saturation:** Analysis of carrier velocity saturation effects, particularly in shorter channel technologies (e.g., 180nm)[cite: 166].

## Circuit Description
[cite_start]The simulation environment uses a standard configuration to sweep voltages[cite: 36, 42]:
* [cite_start]**Input Voltage ($V_{GS}$):** Stepped from 0V to $V_{DD}$[cite: 152].
* [cite_start]**Drain-Source Voltage ($V_{DS}$):** Swept from 0V to $V_{DD}$[cite: 148].
* [cite_start]**Models:** SPICE Level 3 models were used for both NMOS and PMOS devices[cite: 51, 66, 98].

## Repository Structure
* [cite_start]`/src`: Contains the SPICE netlists (`.sp`) and LTspice files (`.asc`)[cite: 36].
* [cite_start]`/models`: Includes the TSMC technology library files[cite: 134].
* [cite_start]`/plots`: Graphical representations of the $I-V$ characteristics exported from the simulator.

## How to Run
1. [cite_start]Load the simulation files in **LTspice** or any SPICE-compatible simulator[cite: 172].
2. [cite_start]Ensure the model libraries (e.g., `tsmc035.sp`) are in the correct path or included via the `.INC` command[cite: 134].
3. [cite_start]Run the `.DC` analysis to generate the curves[cite: 147].

---
[cite_start]*Note: This project was developed as part of the "Introduction to Electronics" course at the University of Thessaly[cite: 2, 3].*
