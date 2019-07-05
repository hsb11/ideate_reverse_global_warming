promptl='Enter length in ft: ';
promptb='Enter breadth in ft: ';
prompth='Enter height in ft: ';
l=input(promptl);
b=input(promptb);
h=input(prompth);
volume=l*b*h*0.0283168;
c=1005;
m=1.225*volume;
prompt='Change in temperature: ';
deltat=input(prompt);
q=m*c*deltat;
promptp='Enter rated power consumption: ';
pinput=input(promptp);
pips=pinput/3600;
prompt='Intial value';
i=input(prompt);
prompt='Step size:';
s=input(prompt);
prompt='Final value:';
f=input(prompt);
eer=i:s:f;
sq=q./(pips*eer);
t=(sq.^(0.5))/60;
plot(t,eer);







