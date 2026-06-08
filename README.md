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

## VLSI Projects

### Project 1: Stick Diagrams
**Objective:** Create stick diagrams to represent CMOS circuit layouts at the transistor level.

**Description:**
- Visual representation of active and metal layers
- Layout planning for basic logic gates (INVERTER, NAND, NOR)
- Design rule checking and optimization

### Project 2: NGSpice Simulations
**Objective:** Simulate and verify CMOS circuit behavior using NGSpice.

**Description:**
- Transistor-level netlist generation
- DC, AC, and transient analysis
- Performance verification against design specifications

### Project 3: Magic Software Layouts
**Objective:** Design physical layouts using the Magic VLSI layout tool.

**Description:**
- Drawing metals, polysilicon, and active layers
- Design rule compliance
- Layout extraction and post-layout simulation

### Project 4: [Additional Project Name]
**Objective:** [Brief description]

**Description:**
- [Key activities and outcomes]

---

## Tools Used

| Tool | Purpose |
|------|---------|
| **NGSpice** | Circuit simulation and transistor characterization |
| **Magic** | VLSI layout design and verification |
| **Manual Analysis** | Small-signal modeling and transfer characteristic derivation |

---

## Key Learnings

### Electronics
- Understanding of MOS transistor physics and operation
- Ability to extract small-signal parameters from DC characteristics
- Analysis of basic amplifier configurations

### VLSI Design
- CMOS circuit design from schematic to layout
- Industry-standard tools (NGSpice, Magic)
- Physical design constraints and design rules

---

## How to Use This Repository

1. Navigate to the specific project folder:
   - `electronics/nmos-pmos-analysis/` for transistor analysis
   - `vlsi/` for VLSI design projects

2. Each subfolder contains:
   - Detailed README with project description
   - Simulation files (where applicable)
   - Results and analysis

3. To run NGSpice simulations:
   ```bash
   ngspice filename.spice

To open Magic layouts:


```bash
   magic layout.mag
