# Electronics and VLSI Design Projects

## Repository Description
This repository contains my coursework projects from two courses in my university curriculum: Introduction to Electronics (ECE214) and Digital Systems VLSI (ECE327). The work covers transistor-level device characterization and digital circuit layout design using industry-standard tools. A total of 9 assignments are saved in this repository — 5 related to the Introduction to Electronics course and 4 to VLSI Design. Although many topics discussed in the two courses overlap, the Electronics course introduces the fundamentals of circuits and CMOS analysis, while the VLSI course focuses more on the physical design of those circuits on silicon.
## Repository Structure


electronics-and-vlsi-design/
├── README.md # This file
├── electronics_projects/
│ └── nmos-pmos-analysis/
│ ├── dc-characteristics.md
│ ├── small-signal-analysis.md
│ └── README.md
└── vlsi assignments/
├── assignment_1/
├── assignment_2/
├── assignment_3/
├── assignment_4/





---

## Electronics Projects

### NMOS/PMOS Transistor Analysis
**Objective:** Analyze the electrical behavior and characteristics of NMOS and PMOS transistors.

**Topics Covered:**
- DC transfer characteristics (I-V curves)
- Operating regions (cutoff, linear, saturation)
- Small-signal parameters (transconductance \( g_m \), output resistance \( r_o \))
- Common-source amplifier configuration

**Key Findings:**
- Relationship between gate voltage and drain current
- Transconductance dependence on bias point
- Comparison of NMOS vs. PMOS performance

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
