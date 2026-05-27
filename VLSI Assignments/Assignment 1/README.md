
# ECE327 - VLSI Digital Systems
## Assignment 1 | Academic Year 2022-2023

This repository contains the implementation of the first assignment for the **HY327 - VLSI Digital Systems** course at the Department of Electrical and Computer Engineering, University of Thessaly.

---

## 📌 Project Overview
The objective of this assignment is to design and analyze a minimum-area CMOS Inverter.

### Task 1: Layout Design (MAGIC)
A CMOS inverter was designed using the **MAGIC** tool with the following specifications:
* **Transistor Dimensions:** Both NMOS and PMOS transistors feature minimum channel width $W = 3\mu m$ and minimum channel length $L = 2\mu m$.
* **Structure:** Vertical polysilicon line for the common gate.
* **Power Rails:** VDD and GND rails with a width of $4\mu m$.
* **Wells & Contacts:** Implementation of n-well and p-well layers with respective substrate contacts (psubstratepcontact, nsubstratencontact).
* **Labels:** Input and output nodes labeled as `in` and `out`.
* **Extraction:** The layout was extracted to a SPICE netlist for connectivity verification.

### Task 2: Simulation and Characterization (SPICE)
Functional verification and timing analysis were performed via SPICE simulation:
* **Models:** Integration of the `0.25-models` (CMOSN, CMOSP)].
* **Analysis:** Transient analysis with a 10ps time step.
* **Measurements (via `.meas`):**
    * Propagation delays ($0 \to 1$ and $1 \to 0$) measured from 50% input to 50% output.
    * Rise and fall times of the output (10% to 90%) with an input $t_{rise,fall} = 200ps$.

---

## 📂 Repository Structure
* `/layout`: MAGIC design files (`.mag`)[cite: 38].
* `/spice`: Extracted netlists and SPICE simulation cards.
* `/docs`: Final report in PDF format including layout screenshots and measurement data.

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

  
    

5. 
