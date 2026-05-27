# SPICE Design and Performance Analysis of CMOS Sequential Circuits

This repository contains the design, transistor-level simulation, and timing characterization of CMOS sequential logic circuits using SPICE (ngspice). The project was implemented as part of the **ECE327: VLSI Digital Design** course at the Department of Electrical and Computer Engineering, University of Thessaly.

## Project Overview

The objective of this assignment is to design, model, and verify sequential storage elements at the transistor level. The project focuses on two primary circuit topologies:
1. A state-infiltration D-latch utilizing weak inverter feedback.
2. A negative-edge-triggered Master-Slave D Flip-Flop utilizing a multiplexer-based configuration and an enhanced clock buffering network.

All implementations maintain a baseline minimum transistor sizing of:
* **NMOS Width ($W_n$):** $3\,\mu\text{m}$
* **PMOS Width ($W_p$):** $9\,\mu\text{m}$

---

## Repository Structure

* `/spice_models` - Contains the SPICE netlist files (`.spice`) for both exercises.
* `/report` Comperhensive  PDF report.

---

## Assignment Specifications & Objectives

### Exercise 1: State-Infiltration Latch with Weak Inverter Feedback
* **Objective:** Transistor-level design and functional verification of a level-sensitive negative D-Latch using transmission gates and a weak inverter feedback loop.
* **Tasks Completed:**
    * Described the circuit schematic in SPICE netlist format using the specified aspect ratios ($W_n/W_p$).
    * Performed full transient analysis to validate the theoretical truth table (transparent mode when $CLK=0$, latching mode when $CLK=1$).
    * Extracted operational waveforms demonstrating correct state retention ($Q_{prev}$).

### Exercise 3: Negative-Edge-Triggered Master-Slave Flip-Flop
* **Objective:** Design, simulation, and complete timing characterization of a multiplexer-based Master-Slave Register (Flip-Flop) featuring an amplified clock distribution network.
* **Architectural Features:**
    * The clock input ($CLK$) is buffered and driven through a chain of inverters ($g_1$, $g_2$, $g_3$) to provide clock isolation and signal strengthening (sizing factor $\times 2$ for $g_2$ and $g_3$).
    * Transmission gates ($T_1 - T_4$) govern the master and slave stages to sample data on the falling edge.
* **Timing Characterization Matrix:**
    Dynamic and sequential parameters were meticulously measured as a function of the input data rise/fall time ($t_{rf}(D)$) and output load capacitance ($C_Q$), maintaining a fixed clock transition time of $200\,\text{ps}$. 
    
    Simulations were carried out under two distinct operating boundaries:
    1.  **Case I:** $t_{rf}(D) = 200\,\text{ps}$ and $C_Q = 0.1\,\text{pF}$
    2.  **Case II:** $t_{rf}(D) = 400\,\text{ps}$ and $C_Q = 0.2\,\text{pF}$
    
* **Extracted Metrics:**
    * **Clock-to-Output Delay ($CLK \rightarrow Q$):** High-to-Low ($T_{PHL}$) and Low-to-High ($T_{PLH}$) propagation delays.
    * **Node Rise/Fall Times:** Timing analysis at the intermediate storage node ($Q_M$) and the primary output ($Q$).
    * **Setup Time Constraint ($T_{\text{setup}}$):** Evaluation of the minimum required window before the clock edge to prevent metastability.
    * **Hold Time Constraint ($T_{\text{hold}}$):** Measurement of data stability window post-clock edge.

---

## Simulation Tools
* **Circuit Simulator:** ngspice (Transient Analysis)


