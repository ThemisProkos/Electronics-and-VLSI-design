

%karampero


function [W RD RS Rg1 Rg2 ]=karampero(Vov);

syms RD
Vdd=2.5;
P=1.5e-3;
VDS=Vdd/3;
Id=P/Vdd;
L=0.25e-6
lamda=0.11;
kn=2.5e-4;
RL=50e3;



praksi1=(1/2)*kn*(Vov.^2)*(1+lamda*VDS)
W=(L*Id)/praksi1

gm=2*Id/abs(Vov)
ro=(1/lamda)/Id;
f=10-(gm*(RD*RL*ro))/(RD*RL+RD*ro+RL*ro);



RD=eval(solve(f))
Vo=Vdd-Id*RD
Vo-Vdd/3
RS=(Vo-Vdd/3)/Id


gm=gm*1
W=W*1
Rg1=7.8e6
Rg2=0.47*Rg1
end


