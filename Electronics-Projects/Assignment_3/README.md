# ECE214: Introduction to Electronics - Lab 3

This repository contains the simulation files and reports for Laboratory Assignment 3 of the course **ECE214 – Introduction to Electronics** (Department of Electrical and Computer Engineering, University of Thessaly).

## Laboratory Overview & Objectives

The primary objective of this laboratory exercise is the transient analysis of digital CMOS circuits using SPICE. The assignment is divided into the following tasks:

---

### Task 1: Delay Analysis of a CMOS Inverter (Asymmetric vs. Symmetric Sizing)
* **Objective:** Investigate the transient response and propagation delays ($t_{pHL}$ and $t_{pLH}$) of a CMOS inverter based on transistor sizing under a Fan-Out of 4 (FO4) loading configuration.
* **Requirements:**
  
  1. Measure propagation delays at the $50\%$ threshold for a **symmetric inverter configuration** where the PMOS transistor is sized wider ($W_p = 2.5 \cdot W_n$) to compensate for carrier mobility differences ($\mu_n > \mu_p$).
  2. Compare the delay components ($t_{pHL}$ and $t_{pLH}$) for all cases of different transistor widths and evaluate the effect of balancing the pull-up and pull-down networks.

---

### Task 2: Parametric Delay Analysis with Scaled Transistor Widths
* **Objective:** Evaluate the impact of scaling transistor dimensions on the overall circuit propagation delay while keeping the sizing ratio constant.
* **Requirements:**
  1. Maintain a constant symmetric sizing ratio ($\frac{W_p}{W_n} = \frac{k_n'}{k_p'} \approx 4.813$).
  2. Perform a parametric sweep by continuously scaling the NMOS transistor channel width across a specific set of values: $W_n \in \{2\,\mu\text{m}, 3.2\,\mu\text{m}, 6\,\mu\text{m}, 10\,\mu\text{m}, 20\,\mu\text{m}\}$.
  3. Ensure that the area and perimeter of the drain and source regions are automatically adjusted and scaled accordingly for each step.
  4. Plot and observe the resulting transient response waveforms to analyze the trade-off between increased current driving capability and growing parasitic capacitances.

---

### Task 3: Delay Analysis in Interconnect Lines
* **Objective:** Study the performance degradation and propagation delay overhead introduced by parasitic interconnect components in digital circuits.
* **Requirements:**
  1. Implement a distributed RC network model to represent a physical interconnect line between logic gates.
  2. Insert this distributed RC model between the output of the driving inverter (**X3**) and the input of the loading inverter (**X4**).
  3. Measure the overall propagation delays $t_{pHL}$ and $t_{pLH}$ from the $50\%$ voltage threshold of the driving input to the $50\%$ voltage threshold of the interconnect line's output.
  4. Conduct a comparative analysis against the ideal circuit configuration (without the interconnect line) to quantify the interconnect-induced delay.

---

### Task 4: Subcircuit Implementation in SPICE
* **Objective:** Optimize netlist organization and structural hierarchy by defining modular components using SPICE directives.
* **Requirements:**
  1. Define a reusable CMOS inverter model as a subcircuit utilizing the `.subckt` statement.
  2. Reconstruct the Fan-Out of 4 (FO4) network topology by instantiating the newly created subcircuit component.
  3. Measure the propagation delays $t_{pHL}$ and $t_{pLH}$ under identical testbench conditions to verify that the modular code architecture preserves the exact electrical and transient behavior of the circuit.
