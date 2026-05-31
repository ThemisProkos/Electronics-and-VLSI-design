
.SUBCKT rc_model 4  8 PARAMS: l=5000 Rw=0.075 Cw=0.1f

*N=4
R1 4 5 {(Rw*l)/4}
R2 5 6 {(Rw*l)/4}
R3 6 7 {(Rw*l)/4}
R4 7 8 {(Rw*l)/4}
C1 4 0 {(Cw*l)/8}
C2 5 0 {(Cw*l)/4}
C3 6 0 {(Cw*l)/4}
C4 7 0 {(Cw*l)/4}
C5 8 0 {(Cw*l)/8}

.ENDS


.SUBCKT inv 1 2 99 PARAMS: Wn=1u Wp=5u
M1 2 1 0 0 NMOS W={Wn} L=0.25u AD={Wn*5u} AS={Wn*5u} PD={Wn+10u} PS={Wn+10u}
M2 2 1 99 99 PMOS W={Wp} L=0.25u AD={Wp*5u} AS={Wp*5u} PD={Wp+10u} PS={Wp+10u}
.ENDS
