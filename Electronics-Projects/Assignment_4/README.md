# CMOS Digital IC Analysis: Propagation Delay & Power Dissipation (SPICE)

This repository contains the SPICE netlists, simulation scripts, and transient analysis for **Lab 4** of the **ECE214 - Introduction to Electronics** course at the **University of Thessaly**. 

The project focuses on sub-micron CMOS technology (**TSMC 0.25µm**) and explores two primary digital IC design constraints across 4 comprehensive exercises:
1. **Propagation Delay Optimization & Internal Capacitances** (Section 6).
2. **Power Dynamics & Energy Consumption Boundaries** (Section 7).

---

## 📂 Project Repository Structure & File Guide

To understand the workflow alongside the final **PDF Report**, the code is mapped directly to the laboratory exercises:

* `/Section6_Delay/`
  * `nand2_delay.sp` &rarr; **Section 6 - Exercise 1:** Exhaustive input vectors for a basic $NAND2$ gate.
  * `complex_gate_sizing.sp` &rarr; **Section 6 - Exercise 2:** Structural netlist of the 1-bit Full Adder Complex Gate ($X$-node) with sized transistors.
* `/Section7_Power/`
  * `inverter_power.sp` &rarr; **Section 7 - Exercise 1:** Power and energy calculation of a symmetric inverter using `.MEASURE INTEG`.
  * `complex_gate_boundary_power.sp` &rarr; **Section 7 - Exercise 2:** Critical operating window and total power analysis for the Full Adder complex gate.

---

## 🔬 Detailed Exercise Walkthrough & Methodology

### ⚡ SECTION 6: Propagation Delay of General CMOS Gates 

#### Exercise 1: NAND2 Vector Analysis
* **Objective:** Implement a unit-size symmetric 2-input NAND gate ($V_{DD} = 2.5\text{V}$, $C_{L(ext)} = 200\text{ fF}$) and measure $t_{pHL}$ and $t_{pLH}$ across all transition scenarios.
* **Key Concept:** Propagation delays vary drastically based on input sequences. Parallel conduction in the pull-up network yields the fastest $t_{pLH}$ ($A=1, B=1 \rightarrow A=0, B=0$). 
* **Worst-Case Delay Configuration:** The absolute worst $t_{pLH}$ occurs during $A=1, B=1 \rightarrow A=1, B=0$, where only one PMOS is active while an internal serial node capacitance must additionally be charged up.

#### Exercise 2: 1-Bit Full Adder Complex Gate Sizing & Delay
***Objective:** Extract and analyze the logical function of the 1-bit Full Adder's first stage (producing the intermediate node $X = \overline{A \cdot B + C_i \cdot (A + B)}$).
* **Transistor Sizing:** To match the rise/fall resistance of a reference symmetric inverter ($W_n = 1\mu\text{m}$), equivalent pull-up/pull-down path analysis was conducted. Serial NMOS/PMOS chains were scaled proportionally to guarantee equal drive currents.
* **Capacitance Extraction:** Transistor oxide gate capacitance ($C_{ox}$) was manually extracted using the formula:
  $$C_{ox} = \frac{\epsilon_{ox}}{t_{ox}}$$
 Where $\epsilon_{ox} = 4 \cdot \epsilon_0 = 3.54 \times 10^{-11}\text{ F/m}$. This calculated parameter was implemented as the explicit capacitive load for the isolated gate characterization.

---

###🔋 SECTION 7: Power Consumption of CMOS Circuits 

#### Exercise 1: Symmetric Inverter Energy Metrics 
***Objective:** Quantify the total average power ($P_T$) and absolute source energy ($E$) for a $1 \rightarrow 0 \rightarrow 1$ logical swing under a strict transient period ($T = 30\text{ ns}$, $t_r=t_f=7.5\text{ ns}$, $C_{L(ext)} = 200\text{ fF}$).
* **Execution:** Utilized advanced automated post-processing routines in SPICE (`.MEASURE TRAN ... INTEG`) to compute the integral of the supply current waveform:
  ```spice
  .TRAN 0.001n 30n
  .MEASURE TRAN integ_I INTEG -I(Vdd)
  .MEASURE energy param integ_I*2.5
  .MEASURE average_power param integ_I*(2.5/30n)
