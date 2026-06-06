# CMOS Complex Gate & Inverter - Power, Energy & Delay Analysis (SPICE)

This repository contains the SPICE netlists, simulation configuration, and transient analysis for the design, verification, and performance evaluation of a CMOS complex gate and a symmetric inverter. This project was developed as part of **Lab 4: Power Consumption of CMOS Gates and Circuits (Section 7)**.

The objective is to explore the physical limitations of CMOS technology, determine the maximum operating frequency (minimum functional transition period), and analyze the discrepancies between theoretical dynamic power models and experimental SPICE simulation results.

---

## 📌 Project Overview & Objectives

The project is structured around two core exercises evaluated under transient SPICE analysis using the **TSMC 0.25µm** technology node:

1. **Exercise 1 (Symmetric Inverter Analysis):** Evaluation of average power consumption ($P_T$) and total delivered energy ($E$) under specific pulse input stimulus ($1 \rightarrow 0 \rightarrow 1$) with defined rise/fall times.
2. **Exercise 2 (CMOS Complex Gate Boundary Testing):** Implementation of an exhaustive 3-bit binary input sequence ($ABC_i$ from `000` to `111`) to discover the **minimum operational time interval ($T$)** where the gate remains functional (maximum operating frequency), followed by a comparison of experimental power dissipation against the theoretical switching activity model.

---

## 🔬 Circuit Architecture & SPICE Netlist

The main simulation file tests a multi-stage CMOS circuit composed of:
- **A CMOS Complex Gate:** Implementing the inverted carry-out function ($\overline{C_o}$) of a Full Adder.
- **An Output Inverter:** Serving as a buffer to restore logical levels and generate the true Full Adder Carry-Out ($C_o$).
- **Parasitic & Load Capacitances:** Including explicit load caps ($CL_x$) and internal transistor junction/sidewall diffusion capacitances ($C_{jar}, C_{jsw}$).

### SPICE Stimulus Setup for 8-Combination Exhaustive Testing
To evaluate all 8 logical combinations sequentially while ensuring that the input $C_i$ switches most frequently (as requested by the specification), a binary scaling approach is applied to the pulse sources:
- **$V_{inA}$:** Period = $16\text{ ns}$ (Switches every $8\text{ ns}$)
- **$V_{inB}$:** Period = $8\text{ ns}$ (Switches every $4\text{ ns}$)
- **$V_{inC}$:** Period = $4\text{ ns}$ (Switches every $2\text{ ns}$) &rarr; *Fastest switching input*

---

## 📊 Key Findings & Simulation Results

For a deep-dive mathematical derivation of these values, please cross-reference this section with the corresponding chapters in the **PDF Report**.

### 1. Inverter Power & Energy (Exercise 1)
Under a stable $V_{DD} = 2.5\text{ V}$ and an input pulse period of $T = 30\text{ ns}$ ($t_r = t_f = 7.5\text{ ns}$):
* **Average Power Dissipation ($P_T$):** $9.593 \times 10^{-5}\text{ W}$
* **Total Energy Delivered ($E$):** $2.877 \times 10^{-12}\text{ J}$

### 2. Critical Operating Boundary (Exercise 2)
By sweeping the time interval between consecutive input changes, the **absolute hardware limitation** for proper gate operation was determined:
* **Minimum Functional Transition Time:** $T_{\text{min}} = 2\text{ ns}$
* At $2\text{ ns}$, the complex gate exhibits an **incomplete voltage swing** (barely functional state) during the $(0,1,0) \rightarrow (0,1,1)$ transition, failing to reach absolute $0\text{ V}$ before being pulled high again.
* The subsequent inverter stage successfully acts as a restoring buffer, stabilizing the final $C_o$ output signal at this maximum frequency boundary ($f = 500\text{ MHz}$).

### 3. Power Discrepancy: Theory vs. Experimental SPICE
Using the analytical formula for dynamic power consumption:
$$P_{av} = \alpha_{0 \rightarrow 1} \cdot f \cdot C_L \cdot V_{DD}^2$$

Where:
* Switching activity factor $\alpha_{0 \rightarrow 1} = 1/8$
* Boundary Frequency $f = 500\text{ MHz}$
* Total node capacitance $C_L = C_{\text{internal\_diffusion}} + C_{\text{external}} = 0.36\text{ pF}$

* **Theoretical Dynamic Power ($P_{av}$):** $0.14\text{ mW}$
* **SPICE Experimental Power ($P_{\text{measured}}$):** $2.9\text{ mW}$

### why is there a discrepancy?
As thoroughly justified in the report, the hand-calculated formula **only** accounts for dynamic capacitive switching power. SPICE transient simulation captures the complete physical behavior, including:
1. **Short-Circuit Power ($P_{\text{short-circuit}}$):** Direct VDD-to-GND current paths formed momentarily when both PMOS and NMOS networks are simultaneously on during transitions.
2. **Static Leakage Power ($P_{\text{leakage}}$):** Subthreshold and gate leakage currents flowing even when the transistors are logically turned off ($V_{GS} < V_T$), a dominant factor in sub-micron technology nodes like $0.25\micro\text{m}$.

---

## 🛠️ How to Run the Simulation

1. Ensure you have a SPICE simulator installed (e.g., **LTspice**, **NGspice**, or **HSpice**).
2. Download the `tsmc025.sp` technology model file and place it in the same directory as the netlist.
3. Execute the simulation using the provided netlist code block or `.sp` file:
   ```bash
   ngspice complex_gate_av_power.sp
