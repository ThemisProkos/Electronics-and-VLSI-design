# Electronics and VLSI Design Projects

## Repository Description
This repository contains my coursework projects from two courses in my university curriculum: Introduction to Electronics (ECE214) and Digital Systems VLSI (ECE327). The work covers transistor-level device characterization and digital circuit layout design using industry-standard tools. A total of 9 assignments are saved in this repository — 5 related to the Introduction to Electronics course and 4 to VLSI Design. Although many topics discussed in the two courses overlap, the Electronics course introduces the fundamentals of circuits and CMOS analysis, while the VLSI course focuses more on the physical design of those circuits on silicon.
## Repository Structure


## 📁 Repository Structure

```
electronics-and-vlsi-design/
├── README.md                         # This file
│
├── electronics_projects/             # ECE214: Introduction to Electronics
│   ├── Project_1/                    # V-I Characteristics of NMOS & PMOS
│   ├── Project_2/                    # Static (DC) CMOS Inverter Analysis
│   ├── assignment_3/
│   ├── assignment_4/
│   └── assignment_5/
│
└── vlsi_assignments/                 # ECE327: Digital Systems VLSI
    ├── assignment_1/
    ├── assignment_2/
    ├── assignment_3/
    └── assignment_4/
```





---

## Electronics Projects (ECE214: Introduction to Electronics)



### 1. NMOS/PMOS Transistor Analysis (V-I Characteristics)
**Objective:** Analyze the electrical behavior and characteristics of NMOS and PMOS transistors.

**Topics Covered:**
- DC transfer characteristics (I-V curves)
- Operating regions (cutoff, linear, saturation)
- Small-signal parameters (transconductance \(g_m\), output resistance \(r_o\))
- Common-source amplifier configuration

**Key Findings:**
- Relationship between gate voltage and drain current
- Transconductance dependence on bias point
- Comparison of NMOS vs. PMOS performance

---

### 2. CMOS Inverter Static Characterization (DC Analysis)
**Objective:** Characterize the DC behavior of a CMOS inverter, including the voltage transfer characteristic (VTC), switching threshold, noise margins, and supply voltage sensitivity.

**Topics Covered:**
- Voltage Transfer Characteristic (VTC) and inverter gain
- Switching threshold (\(V_M\)) dependence on \(k_n/k_p\) ratios
- Noise margin calculation (\(NM_L\), \(NM_H\))
- Transistor sizing for symmetric VTC (\(V_M = V_{DD}/2\))
- Signal restoration in cascaded inverter chains
- Minimum functional supply voltage (\(V_{DD(min)}\))

**Key Findings:**
- Symmetric VTC achieved by sizing \(W_p \approx 3.4 \times W_n\), compensating for mobility differences
- Cascaded inverters act as signal regenerators, restoring full logic swing from noisy inputs
- Minimum operational \(V_{DD} \approx 70\text{ mV}\) before switching behavior is lost

---

### 3. Transient Analysis & Propagation Delay in CMOS Circuits
**Objective:** Study transient behavior of digital CMOS circuits, focusing on propagation delay optimization and the impact of transistor sizing and parasitic interconnect elements.

**Topics Covered:**
- Parametric scaling of transistor widths with constant \(W_p/W_n\) ratio
- Trade-off between current drive capability and parasitic capacitances
- Propagation delay dependence on \(C_{g2}/C_{g1}\) ratio
- Distributed RC network modeling for interconnect lines
- Subcircuit implementation in SPICE (`.subckt`)

**Key Findings:**
- Larger transistor widths increase drive current but also add parasitic capacitance, creating an optimal sizing point
- Interconnect lines introduce significant delay overhead compared to ideal circuits
- Modular subcircuit design preserves electrical behavior while improving netlist organization

---

### 4. CMOS Inverter Power & Energy Dissipation
**Objective:** Quantify power and energy consumption in CMOS circuits, including average power, dynamic switching power, and energy per operation.

**Topics Covered:**
- Total average power calculation (\(P_T\))
- Energy integration using SPICE `.MEASURE INTEG` directive
- Power dynamics in symmetric inverters and complex gates
- Impact of input transition times (rise/fall) on energy consumption

**Key Findings:**
- Power dissipation depends on switching activity, load capacitance, and supply voltage
- Automated post-processing in SPICE enables accurate energy calculation via current waveform integration

---

### 5. Analog Amplifier Design: CS MOSFET & Multistage BJT
**Objective:** Design, simulate, and analyze analog amplifier topologies, including a common-source (CS) MOSFET amplifier with active load and a multistage BJT amplifier.

**Topics Covered:**
- DC operating point calculation (\(V_{GS}\), \(V_{OV}\), \(V_{OUT}\))
- Small-signal parameter extraction (\(g_m\), \(r_o\))
- Midband voltage gain (\(A_M\)) and output resistance (\(R_{out}\))
- Source degeneration and bypass capacitor effects on gain and bandwidth
- Frequency response analysis (\(f_L\), \(f_H\), \(3\text{ dB}\) bandwidth)
- Non-linear distortion and clipping

**Key Findings:**
- Unbypassed source degeneration reduces midband gain but improves bandwidth and linearity
- Active current-source load maximizes voltage gain compared to resistive loading
- Multistage BJT amplifiers have lower cutoff frequencies determined by coupling and bypass capacitors

---
---

## VLSI Projects (ECE327: Digital Systems VLSI)

### 1. CMOS Inverter Characterization & Design Analysis
**Objective:** Characterize fundamental CMOS components using TSMC 0.25μm technology, including transistor I-V characteristics, threshold voltage, body effect, and inverter optimization for symmetry and power scaling.

**Topics Covered:**
- Static I-V characteristics of NMOS and PMOS (\(I_{ds}\) vs. \(V_{gs}\), \(I_{ds}\) vs. \(V_{ds}\))
- Instantaneous and average resistance modeling (\(R_{eqabs}\), \(R_{eqav}\))
- Dynamic RC analysis through load capacitor charging/discharging
- Threshold voltage (\(V_T\)) measurement and body effect in series-connected transistors
- Voltage Transfer Characteristic (VTC) and noise margin extraction (\(V_{IL}\), \(V_{IH}\), \(V_{OL}\), \(V_{OH}\), \(NM_L\), \(NM_H\))
- Symmetric inverter design (\(V_M = V_{DD}/2\)) via PMOS width optimization
- Supply voltage scaling analysis (\(V_{DD}\) from 2.5V down to 0.7V) and power efficiency

**Key Findings:**
- Electron mobility (\(\mu_n\)) is approximately 4.8–5× higher than hole mobility (\(\mu_p\)) in this process
- Symmetric switching threshold achieved at \(W_p = 12\mu m\) with \(W_n = 2\mu m\) (\(k_n/k_p = 0.8\))
- Reducing \(V_{DD}\) from 2.5V to 0.7V reduces average power from 17.5μW to 185pW
- Lower supply voltages produce steeper VTC transitions, improving relative noise robustness

---

### 2. Minimum-Area CMOS Inverter Layout (MAGIC)
**Objective:** Design a minimum-area CMOS inverter layout using MAGIC VLSI tool, followed by SPICE simulation for propagation delay and rise/fall time characterization.

**Topics Covered:**
- Full-custom layout design with minimum transistor dimensions (\(W = 3\mu m\), \(L = 2\mu m\))
- Vertical polysilicon gate routing and power rail implementation (VDD, GND)
- n-well/p-well layers with substrate contacts
- Layout extraction to SPICE netlist for connectivity verification
- Propagation delay measurement (\(t_{pHL}\), \(t_{pLH}\)) using `.meas` directives
- Rise and fall time characterization (10% to 90%)

**Key Findings:**
- Proper substrate contacts are essential for preventing latch-up and ensuring correct device operation
- Extracted netlists from MAGIC enable post-layout verification against schematic-level expectations

---

### 3. CMOS Standard Cell Library: Logic Design, Layout & Elmore Delay
**Objective:** Master the complete digital design flow from Boolean equations to optimal transistor sizing, stick diagram planning, full-custom mask layouts, and theoretical delay modeling using RC Elmore metric for multiple static CMOS gates.

**Topics Covered:**
- Static CMOS schematic derivation for AOI21, AOI22, OAI31, and Majority gates
- Optimal transistor sizing to meet 6.5kΩ worst-case equivalent resistance constraint
- Euler path identification for uninterrupted diffusion rails
- Full-custom standard cell layout in MAGIC VLSI (SCMOS 0.25μm process, \(\lambda = 0.125\mu m\))
- DRC verification and post-layout extraction to SPICE
- Diffusion area analysis (\(AS\), \(AD\), \(PS\), \(PD\)) and junction capacitance calculation (\(C_{db}\))
- Elmore delay modeling under Fan-Out 4 (FO4) loading

**Key Findings:**
- Optimal Euler paths eliminate diffusion breaks, significantly reducing parasitic junction capacitances
- The worst-case discharge path determines the sizing vector for series-connected NMOS stacks
- Elmore delay model accurately predicts propagation delay when internal node capacitances are properly extracted

---

### 4. CMOS Latches & Master-Slave Flip-Flops (Sequential Circuits)
**Objective:** Design, simulate, and perform timing characterization of CMOS sequential storage elements, including a state-infiltration D-latch with weak inverter feedback and a negative-edge-triggered master-slave D flip-flop.

**Topics Covered:**
- Transmission-gate based D-latch design with weak inverter feedback for state retention
- Negative-edge-triggered master-slave D flip-flop with clock buffering network
- Transistor-level sizing: NMOS \(W_n = 3\mu m\), PMOS \(W_p = 9\mu m\)
- Timing characterization matrix: clock-to-output delay (\(T_{PHL}\), \(T_{PLH}\)), rise/fall times
- Setup time (\(T_{setup}\)) and hold time (\(T_{hold}\)) constraint extraction
- Impact of input data transition time (\(t_{rf}(D)\)) and output load capacitance (\(C_Q\)) on performance

**Key Findings:**
- Weak inverter feedback provides state retention while allowing new data to overwrite when the transmission gate is active
- Clock buffering (with progressive sizing \(\times 2\)) improves clock signal integrity and isolates the master stage from slave stage loading
- Setup and hold time constraints vary significantly with input slew rate and output load capacitance

---

---
## 🛠 Tools Used

| Tool | Purpose |
|------|---------|
| **LTspice** | Analog circuit simulation, DC/transient/AC analysis, amplifier design |
| **NGspice** | Digital and mixed-signal circuit simulation, `.meas` integration for power/energy calculations |
| **Magic VLSI** | Full-custom CMOS layout design, DRC verification, netlist extraction |
| **MATLAB** | Numerical verification for amplifier calculations |
| **LaTeX** | Professional technical report writing |

---

## 📚 Key Learnings

### Electronics (ECE214)
- MOS transistor physics and I-V characteristic analysis (cutoff, linear, saturation regions)
- Small-signal parameter extraction (\(g_m\), \(r_o\)) from DC characteristics
- CMOS inverter static characterization: VTC, noise margins, switching threshold (\(V_M\))
- Transistor sizing for symmetric VTC (\(V_M = V_{DD}/2\))
- Propagation delay analysis and parametric scaling of transistor widths
- RC interconnect modeling for parasitic delay estimation
- Power and energy dissipation quantification using SPICE `.MEAS INTEG`
- Common-source amplifier design with active current-source load
- Frequency response analysis (lower/upper cutoff frequencies, \(3\text{ dB}\) bandwidth)
- Source degeneration and bypass capacitor effects on gain/bandwidth

### VLSI Design (ECE327)
- Full-custom CMOS layout design using Magic VLSI (SCMOS 0.25μm process)
- Standard cell development: AOI21, AOI22, OAI31, Majority gates
- Euler path identification for uninterrupted diffusion rails
- Elmore delay modeling under Fan-Out 4 (FO4) loading
- Parasitic capacitance extraction (\(C_{db}\)) from diffusion areas/perimeters
- Sequential circuit design: transmission-gate D-latch, master-slave D flip-flop
- Timing characterization: setup/hold time, clock-to-output delay (\(T_{PHL}\), \(T_{PLH}\))
- Body effect analysis in series-connected MOSFETs
- Supply voltage scaling and power efficiency trade-offs

---

## 📂 How to Use This Repository

### 1. Navigate to the specific project folder:

- **Electronics projects:** `electronics_projects/`
- **VLSI assignments:** `vlsi_assignments/`

### 2. Each subfolder contains:

| File Type | Description |
|-----------|-------------|
| `README.md` | Project description, objectives, and methodology |
| `*.cir` / `*.spice` | SPICE netlists for simulation |
| `*.mag` | Magic VLSI layout files |
| `*.pdf` | Complete technical report with results and analysis |

### 3. Running Simulations

#### For LTspice (analog circuits):
- Open the `.cir` file directly in LTspice
- Run simulation (DC sweep, transient, or AC analysis)

#### For NGspice (digital/sequential circuits):

```bash
ngspice filename.spice

```
#### For Magic VLSI design 

```bash
export DISPLAY=":0"
magic -T SCMOS layout.mag
