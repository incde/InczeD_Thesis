t1 = readtable('eps1.txt');
t2 = readtable('eps2.txt');
t3 = readtable('eps3.txt');
t4 = readtable('eps4.txt');
t5 = readtable('eps5.txt');
t6 = readtable('eps6.txt');
t7 = readtable('eps7.txt');
t8 = readtable('eps8.txt');

t9 = readtable('ResonanceShift_eps.txt');

figure;
    plot(t1.Var1,t1.Var2, 'r','Linewidth',2);
    hold on
    plot(t2.Var1,t2.Var2, 'Linewidth',2);
    plot(t3.Var1,t3.Var2, 'Linewidth',2);
    plot(t4.Var1,t4.Var2, 'Linewidth',2);
    plot(t5.Var1,t5.Var2, 'Linewidth',2);
    plot(t6.Var1,t6.Var2, 'Linewidth',2);
    plot(t7.Var1,t7.Var2, 'Linewidth',2);
    plot(t8.Var1,t8.Var2, 'Linewidth',2);
    set(gca,'XTick',2:1:10);
    set(gca,'YTick',-33:3:0);
    axis([2 10 -33 0]);
    grid on;
    xlabel('Frekvencia (GHz)','FontSize',14);
  	ylabel('S_{21} (dB)','FontSize',14);
    legend('\epsilon_{r}=1','\epsilon_{r}=2','\epsilon_{r}=3','\epsilon_{r}=4','\epsilon_{r}=5','\epsilon_{r}=6','\epsilon_{r}=7','\epsilon_{r}=8', 'Location','nw');
    
 figure;
    plot(t9.x, t9.y, 'o-','Color','#7E2F8E','Linewidth',2);
    set(gca,'XTick',1:1:8);
    set(gca,'YTick',3.4:0.2:5.2);
    axis([1 8 3.4 5.2]);
    grid on;
    xlabel('\epsilon_{r}','FontSize',14);
 	ylabel('1. Rezonáns Frekvencia (GHz)','FontSize',14);