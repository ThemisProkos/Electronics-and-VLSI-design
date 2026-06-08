# Analog Electronics - Amplifier Design & Simulation (Lab 5)

## Project Overview
This repository contains the design, theoretical analysis, and simulation files for two distinct analog amplifier topologies using MOSFET and BJT technologies. The project focuses on determining DC operating points, deriving small-signal parameters, evaluating midband voltage gains, and analyzing frequency responses (bandwidth and cutoff frequencies) under various circuit configurations.

All simulations were verified using SPICE/LTspice, and numerical calculations were conducted using MATLAB.

---

## Repository Structure
* `/simulations` - SPICE netlists and schematic files ( `.cir`).
* `/scripts` - MATLAB scripts used for numerical verification and calculations.
* `Report.pdf` - The comprehensive technical report containing analytical derivations, simulation plots, and comparative discussions.

---

## Exercise 1: Common-Source (CS) MOSFET Amplifier with Current-Source Load

### Circuit Description & Schematic
Exercise 1 evaluates a Common-Source (CS) amplifier stage where an NMOS transistor ($M_1$) acts as the driving device, loaded by a PMOS current source ($M_2$) functioning as an active load to maximize voltage gain. The circuit incorporates a source degeneration resistor ($R_s$) and a bypass capacitor ($C_s$).

### Device & Bias Specifications
| Parameter | Value | Description |
| :--- | :--- | :--- |
| $V_{DD}$ | $2.5\text{ V}$ | Positive Power Supply |
| $V_{SS}$ | $-2.5\text{ V}$ | Negative Power Supply |
| $I_{REF}$ | $100\text{ }\mu\text{A}$ | Reference Bias Current |
| $R_s$ | $2.2553\text{ k}\Omega$ | Source Degeneration Resistor |
| $C_s$ | $10\text{ }\mu\text{F}$ / $0\text{ }\mu\text{F}$ | Source Bypass Capacitor |
| $k'_n \cdot (W/L)_1$ | $20\text{ mA/V}^2$ | NMOS Transconductance Parameter |
| $k'_p \cdot (W/L)_2$ | $20\text{ mA/V}^2$ | PMOS Transconductance Parameter |
| $V_{tn}$ | $0.5\text{ V}$ | NMOS Threshold Voltage |
| $V_{tp}$ | $-0.5\text{ V}$ | PMOS Threshold Voltage |
| $V_{An}$ | $10\text{ V}$ | NMOS Early Voltage (Channel Length Modulation) |
| $V_{Ap}$ | $12\text{ V}$ | PMOS Early Voltage (Channel Length Modulation) |

### Tasks & Problem Statements

* **A. DC Operating Point (Hand Analysis)** Calculate the theoretical DC operating point of the circuit. Specifically, find the gate-to-source voltage $V_{GS1}$, the overdrive voltage $V_{OV1}$, and the output DC bias voltage $V_{OUT}$ when $V_{IN} = 0\text{ V}$. Assure both transistors operate in the saturation region.

* **B. Small-Signal Parameters** Derive the analytical expressions and compute the numerical values for the small-signal transconductance $g_{m1}$ and the output resistances $r_{o1}$ and $r_{o2}$ of the transistors.

* **C. Midband Voltage Gain ($A_M$) & Output Resistance ($R_{out}$)** Assuming the source capacitor $C_s$ acts as a perfect short circuit at midband frequencies, calculate the total output resistance $R_{out}$ and the midband small-signal voltage gain $A_M = v_{out}/v_{in}$.

* **D. DC Transfer Characteristic (Simulation)** Simulate the DC transfer characteristic ($V_{OUT}$ vs. $V_{IN}$) by sweeping $V_{IN}$ within an appropriate range. Identify the linear operating region of the amplifier and determine the voltage gain $G_u$ graphically from the slope of this region. Compare this result with the hand analysis.

* **E. Optimal Biasing & Signal Swing** Determine the optimal input DC bias voltage $V_{IN}$ that places the output at the center of the linear operating region to achieve maximum symmetrical voltage swing.

* **F. Transient Small-Signal Response** Apply a small-signal sinusoidal input at $1\text{ kHz}$ with an amplitude of $8\text{ mV}$ superimposed on the optimal DC bias voltage. Plot the transient input and output waveforms, evaluate the peak-to-peak voltage gain, and observe any phase inversion ($\pi\text{ rad}$).

* **G. Non-linear Distortion & Clipping** Gradually increase the input signal amplitude beyond $25\text{ mV}$. Document the onset of signal distortion and clipping, and analyze how operating outside the linear region degrades the effective voltage gain.

* **H. Frequency Response & Source Degeneration Effects** Perform an AC small-signal analysis to obtain the magnitude and phase frequency response plots of the voltage gain. 
  1. For $C_s = 10\text{ }\mu\text{F}$, find the midband gain in dB and estimate the $3\text{ dB}$ lower ($f_L$) and upper ($f_H$) cutoff frequencies.
  2. Repeat the simulation with $C_s = 0\text{ }\mu\text{F}$ (removing the bypass capacitor). Quantify and discuss the impact of unbypassed source degeneration on midband gain, high-frequency performance, and bandwidth.

---

## Exercise 2: Multistage BJT Amplifier Frequency Analysis

### Circuit Description
Exercise 2 involves the frequency domain evaluation of a multistage Bipolar Junction Transistor (BJT) network. This exercise targets the calculation of the overall midband voltage gain and examines how discrete coupling and bypass capacitors set the lower cutoff frequency ($f_L$).

### Active Device Specifications
* **BJT Parameter ($\beta$ / $h_{fe}$):** $100$
* **Thermal Voltage ($V_T$):** $\approx 25\text{ mV}$ at room temperature.

### Tasks & Problem Statements

* **A. Theoretical Midband Gain ($A_u$)** Perform a small-signal midband analysis of the multistage BJT amplifier. Derive the expression for the total voltage gain $A_u$ and express the final result in both V/V and decibels (dB).

* **B. Bandwidth Determination ($3\text{ dB}$ Response)** Simulate the AC frequency response of the multistage amplifier. Identify the midband stabilization gain, locate the frequencies where the response drops by $3\text{ dB}$, and compute the total bandwidth $BW = f_H - f_L$. Compare these values against theoretical calculations.
