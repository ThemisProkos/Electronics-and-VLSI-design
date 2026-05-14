# CMOS Inverter Characterization & Design Analysis

## 1. Project Overview
This project focuses on the characterization and design of fundamental CMOS components using the **MOSIS-TSMC 0.25μm** technology node. All simulations were performed using **ngspice** to evaluate transistor behavior, logic gate performance, and the physical trade-offs inherent in sub-micron semiconductor technology.

## 2. Exercise 1: Transistor Characterization
The primary goal was to analyze the electrical characteristics of individual NMOS and PMOS transistors ($W=3\mu m, L=2\mu m$).

* **Static I-V Characteristics**: DC analysis was used to plot $I_{ds}$ vs. $V_{gs}$ and $V_{ds}$, allowing for the identification of the saturation boundary ($V_{ds} = V_{gs} - V_t$).
* **Resistance Modeling**:
    * **Instantaneous Resistance ($R_{eqabs}$)**: Calculated as $V/I$ at specific bias points.
    * **Average Resistance ($R_{eqav}$)**: Calculated as $\Delta V / \Delta I$ in the saturation region for $V_{gs} \in \{0.8, 1.2, 2, 2.5\}V$.
* **Dynamic RC Analysis**: By simulating the charging (PMOS) and discharging (NMOS) of a $0.1pF$ load capacitor, the average equivalent resistance was determined and compared against static DC results.

## 3. Exercise 2: Threshold Voltage & Series Connectivity
This exercise investigated the physical limitations of transistor connectivity and the impact of the **Body Effect**.

* **Threshold Voltage ($V_T$)**: Measured through transient analysis by simulating voltage drops across transistors connected in series.
* **Series Stacking**: Simulations of two identical transistors in series revealed an increased total voltage drop. This occurs because the source potential of the top transistor is higher than the substrate potential ($V_{SB} > 0$), which increases the effective threshold voltage ($V_T$) due to the body effect.

## 4. Exercise 3: CMOS Inverter Design & Optimization
This section covers the characterization of the Voltage Transfer Characteristic (VTC) and optimization for symmetry.

### VTC Characterization (Initial Design)
Based on the derivative method ($dV_{out}/dV_{in} = -1$), the following critical points were identified for the initial design:
* **$V_{IL} = 0.645V$**: Maximum input recognized as Logic 0.
* **$V_{IH} = 0.964V$**: Minimum input recognized as Logic 1.
* **$V_{OH} = 2.39V$**: Minimum output for a Logic 1.
* **$V_{OL} = 0.188V$**: Maximum output for a Logic 0.
* **$V_{M} = 0.882V$**: The switching threshold where $V_{in} = V_{out}$.
* **Noise Margins**: $NM_L = 0.457V$ and $NM_H = 1.426V$, showing high asymmetry.

### Symmetric Design Optimization
To achieve a symmetric switching threshold ($V_M = V_{DD}/2 = 1.25V$), the PMOS width was increased to **$W_p = 12\mu m$** with $W_n = 2\mu m$.
* **Mobility Analysis**: Symmetry was achieved at a transconductance ratio of $k_n/k_p = 0.8$.
* **Physical Finding**: The electron mobility ($\mu_n$) was found to be approximately **4.8 to 5 times higher** than the hole mobility ($\mu_p$) for this process.
* **Optimized Results**: Balanced noise margins were achieved ($NM_L = 0.905V, NM_H = 0.86V$).

### Voltage Scaling & Power Analysis
Scalability was tested for $V_{DD} \in \{0.7, 1.2, 1.8, 2.5\}V$.
* **Transition Region**: The region narrowed significantly at lower voltages (from 12.75% of $V_{DD}$ at 2.5V down to 2.28% at 0.7V), improving relative noise robustness.
* **Power Efficiency**: Reducing $V_{DD}$ lowered average power from **17.5μW** (at 2.5V) to **185pW** (at 0.7V).
* **Average Current**: Static current dropped from **6.9μA** at 2.5V to **263pA** at 0.7V.

## 5. Final Conclusions
* **Logic Integrity**: The CMOS inverter maintains its fundamental inverting property even at near-threshold voltages (0.7V).
* **Efficiency vs. Speed**: Scaling $V_{DD}$ down drastically reduces power consumption but increases propagation delay due to reduced drive current.
* **Robustness**: Lower supply voltages result in a steeper VTC transition, effectively narrowing the "uncertainty" zone and improving relative gain.

## 📂 Repository Structure
* `/spice`: Extracted netlists and SPICE simulation cards.
* `/docs`: Final report in PDF format including layout screenshots and measurement data.

---

