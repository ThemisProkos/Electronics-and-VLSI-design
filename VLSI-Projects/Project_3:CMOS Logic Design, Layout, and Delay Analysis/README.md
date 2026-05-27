# ECE330 - Digital VLSI Systems | Assignment 3

This repository contains the complete design, implementation, layout extraction, and analytical delay verification for a static CMOS standard cell library, developed for the **HY330 - Digital VLSI Systems** course at the *University of Thessaly*.

The core objective of this project is to master the complete digital design flow: transitioning from Boolean equations to optimal transistor sizing, structural stick diagram planning, full-custom mask layouts in Magic VLSI, and advanced theoretical delay modeling using the RC Elmore metric.

---

## 🛠️ Technology Parameters & Constraints

The designs are targeted and optimized for a standard **0.25 µm SCMOS process node** under the following structural and electrical rules:
* **Grid Resolution**: $\lambda = 0.125\,\mu\text{m}$ (Minimum features: $W_{\text{min}} = L_{\text{min}} = 2\lambda = 0.25\,\mu\text{m}$).
* **Supply Voltage ($V_{DD}$)**: $2.5\,\text{V}$.
* **Baseline Channel Resistances** (For a unit transistor of size $W/L = 2\lambda/2\lambda$):
  * **NMOS Resistance ($R_n$)**: $13\,\text{k}\Omega$
  * **PMOS Resistance ($R_p$)**: $31\,\text{k}\Omega$
* **Target Output Driving Strength**: Every implemented gate must be sized such that both its Pull-Up Network (PUN) and Pull-Down Network (PDN) exhibit a maximum equivalent worst-case channel resistance of exactly **$6.5\,\text{k}\Omega$** (matching a baseline symmetric inverter).

---

## 📐 Project Structure & Deliverables

The assignment covers five distinct engineering phases (**a** through **e**) evaluated across the following four Boolean logic functions:
1. **$f_{\text{aoi21}} = (a + bc)'$** (AND-OR-INVERT, 3-input)
2. **$f_{\text{maj}} = (ab + bc + ca)'$** (Complementary Majority Gate, 3-input)
3. **$f_{\text{oai31}} = (a(b + c + d))'$** (OR-AND-INVERT, 4-input)
4. **$f_{\text{aoi22}} = (ab + cd)'$** (AND-OR-INVERT, 4-input)

### (a) Transistor-Level Schematic Capture & Optimal Sizing
* Derivation of the static CMOS schematic using the absolute minimum transistor count required to prevent logical leakage.
* Analytical calculation of the ratio $(W/L)$ for each individual transistor. Sizing vectors are chosen to satisfy the $6.5\,\text{k}\Omega$ worst-case constraint when the longest/slowest charging or discharging electrical path is active.

### (b) Topologically Optimized Stick Diagrams
* Generation of abstract, dimensionless graph sketches (Stick Diagrams) for each logic cell.
* Application of graph theory to isolate valid **Euler Paths** across both the PUN and PDN nets. This guarantees shared uninterrupted diffusion rails, effectively minimizing parasitic junction areas and reducing the final silicon footprint.

### (c) Full-Custom Physical Layout (Standard Cell Format)
* Layout construction using **Magic VLSI** inside an SCMOS framework to produce standard cells prepared for EDA library integration.
* Comprehensive sign-off verification checking for zero errors using embedded Design Rule Checks (DRC).
* Functional post-layout validation via netlist extraction and truth table mapping inside the **ngspice** simulation environment.

### (d) Parasitic Extraction and Diffusion Area Analysis
* Microscopic geometry analysis focusing on the **$f_{\text{aoi21}}$** gate layout.
* Measurement of actual drawn lambda grid tiles to calculate exact Source/Drain diffusion areas ($AS, AD$) and corresponding perimeters ($PS, PD$) for every single transistor instance.
* Numerical evaluation of parasitic junction depletion capacitances ($C_{db}$) specifically for a high-to-low ($1 \rightarrow 0$) output switching transition using the voltage-modulated process formulation:

$$C_{db} = K_{j} \cdot AD \cdot C_{j} + K_{jsw} \cdot PD \cdot C_{jsw}$$

*(Where $C_j, C_{jsw}$ represent process zero-bias area and sidewall perimeter capacitances, modulated by their respective voltage grading factors $K_j, K_{jsw}$).*

### (e) Analytical Elmore Delay Verification (Fan-Out 4 Loading)
* Theoretical calculation of the worst-case high-to-low propagation delay ($t_{pHL}$) for the **$f_{\text{aoi21}}$** cell.
* Modeling the cell under a standard, heavy industry-benchmark **Fan-Out 4 (FO4)** loading environment, where the output node branches to drive input port $b$ of four duplicate identical downstream standard blocks (loading the output with 8 transistor gates total: 4 PMOS and 4 NMOS).
* Extraction of an equivalent RC network from the active series-connected NMOS path to evaluate the cumulative time constant using the Elmore Delay equation:

$$\tau_{RC} = \ln(2) \cdot \left[ C_{\text{internal}} \cdot R_1 + C_{\text{load}} \cdot (R_1 + R_2) \right]$$

Where:
* $C_{\text{internal}}$ ($C_{bc}$): The parasitic storage node capacitance between the stacked series NMOS devices (accounting for localized diffusion junctions combined with physical gate overlap terms $C_{gs}, C_{gd}$).
* $C_{\text{load}}$ ($C_L$): The cumulative capacitance loading the output node, summing the gate's own intrinsic output layout components with the extrinsic downstream gate input capacitances (gate oxide layers and fringe overlap elements).
* $R_1, R_2$: Distributed channel resistances along the critical discharge path.

---
## 🚀 How to Run

In order to run the files of this assingment it is required the installation of the ubundu subsystem
After the installation of the ubundu and in condition   Magic and NGSPice tools are already installed you will be able to run the follwing commands in the ubundu terminal.
1. **Layout:** Open the design in MAGIC:
   ```bash
   export DISPLAY=":0"
   -magic Tscmos

2. Open the the files fro mthe Magic interface

3. For the NGspice run the command:
    ```bash
    ngspice yourfile.spice

    
## 📁 Repository Organization

```text
├── faoi21.mag,faoi22.mag,fmaj.mag,foai31.mag         # Full-custom physical mask files (.mag)  for the implementation for Magic VLSI
├── faoi21.spice,faoi22.spice,foa31.spice,fmaj.spice/      # Extracted netlists from Magic VLSI 
├── technology.txt #technology paramaters       
└── Project_3:CMOS Logic Design, Layout, and Delay Analysis.pdf # Comprehensive engineering design report (PDF)
