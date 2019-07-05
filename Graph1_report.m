promptl='Enter length in ft: ';
promptb='Enter breadth in ft: ';
prompth='Enter height in ft: ';
l=input(promptl);
b=input(promptb);
h=input(prompth);
v=l*b*h*0.0283168;
c=1005;

hold all;

 
%Lloyd
T1=37:-1:25;
 dT1=37.-T1;
 q1=(v*1.225*1005).*dT1;
 pips1=810/3600;
 eer1=3.29;
 sq1=q1./(pips1*eer1);
 t1=(sq1.^(0.5))/60;
 plot(t1,T1);
 unit1=810*t1(end)/60000;

 %Onida;
 T2=37:-1:25;
 dT2=37.-T2;
 q2=(v*1.225*1005).*dT2;
 pips2=1035/3600;
 eer2=3.4;
 sq2=q2./(pips2*eer2);
 t2=(sq2.^(0.5))/60;
 plot(t2,T2);
 unit2=1035*t2(end)/60000;
%Voltas
T3=37:-1:25;
 dT3=37.-T3;
 q3=(v*1.225*1005).*dT3;
 pips3=1430/3600;
 eer3=3.53;
 sq3=q3./(pips3*eer3);
 t3=(sq3.^(0.5))/60;
 plot(t3,T3);
 unit3=1430*t3(end)/60000;
 
%Samsung
T4=37:-1:25;
 dT4=37.-T4;
 q4=(v*1.225*1005).*dT4;
 pips4=2550/3600;
 eer4=2.93;
 sq4=q4./(pips4*eer4);
 t4=(sq4.^(0.5))/60;
 plot(t4,T4);
 unit4=2550*t4(end)/60000;
 legend('Lyold 0.8 Ton','Onida 1 Ton','Voltas 1.5 Ton','Samsung 2 Ton');
 title('Time required to cool room from 37°C to 25°C under ideal conditions');
 xlabel('Time in minutes');
 ylabel('Temperature in °C');
 hold off;
 
 units=[unit1 unit2 unit3 unit4];
 h=[1 2 3 4];
 s=bar(h,units,'BarWidth',0.5);
axis([0 5 0 0.5]);
set(gca,'xtick',[0:1:5]);
title('Corresponding units consumed');
ylabel('Units consumed');
xlabel('Model');
xticklabels({'0','Lyold 0.8T','Onida 1T','Voltas 1.5T','Samsung 2T'});
% label=['Lloyd' 'Onida' 'Voltas' 'Samsung'];
% set(gca,'xtickl',label);

 
 
