t1_dsrr    = readtable('dsrr_s21.txt');
t2_addsubs = readtable('addsubs_s21.txt');
t3_vacuum  = readtable('vacuum.txt');
t4_water   = readtable('water_s21.txt');

figure;
    plot(t1_dsrr.Var1,t1_dsrr.Var2, '-','Color','#A2142F','Linewidth',3);
    hold on
    plot(t2_addsubs.Var1, t2_addsubs.Var2, '-','Color','#77AC30','Linewidth',3);
    plot(t3_vacuum.Var1, t3_vacuum.Var2, '-','Color','#808080','Linewidth',3);
    plot(t4_water.Var1, t4_water.Var2, '-','Color','#0072BD','Linewidth',3);
    set(gca,'FontSize',14);
%     set(gca,'XTick',0:100:400);
%     set(gca,'YTick',0:20:80);
    axis([2 11 -35 0]);
    grid on;
    xlabel('Frequency (GHz)','FontSize',16);
 	ylabel('Magnitude of S_{21} (dB)','FontSize',18);
    legend('DSRR','Additional PMMA', 'Empty Channel', 'Water-filled', 'Location','southwest');

