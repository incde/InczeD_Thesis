t1 = readtable('thickness_01.txt');
t2 = readtable('thickness_03.txt');
t3 = readtable('thickness_05.txt');
t4 = readtable('thickness_07.txt');
t5 = readtable('thickness_09.txt');
t6 = readtable('thickness_11.txt');
t7 = readtable('thickness_13.txt');
t8 = readtable('thickness_15.txt');

t9 = readtable('ResonanceShift_thickness.txt');

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
    set(gca,'XTick',2:1:12);
    set(gca,'YTick',-33:3:0);
    axis([2 12 -33 0]);
    grid on;
    xlabel('Frequency (GHz)','FontSize',14);
  	ylabel('Magnitude of S_{21} (dB)','FontSize',14);
    legend('0.1 mm','0.3 mm','0.5 mm','0.7 mm','0.9 mm','1.1 mm','1.3 mm','1.5 mm');
    
    
figure;
    plot(t9.x, t9.y, 'o-','Color','#7E2F8E','Linewidth',2);
    set(gca,'XTick',0.1:0.2:1.5);
    set(gca,'YTick',4.3:0.1:5);
    axis([0.1 1.5 4.3 5]);
    grid on;
    xlabel('Thickness of PMMA (mm)','FontSize',14);
 	ylabel('1st Resonant Frequency (GHz)','FontSize',14);