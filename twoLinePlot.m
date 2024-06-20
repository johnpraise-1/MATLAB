%Plotting multiple lines and colors
%question 7
figure% new figure
t=0:0.01:2*pi% time vector
plot(sin(t))% to plot sine wave
plot(t,sin(t))% to plot cosine wave on top of it in a red dashed line
hold on% hold on
plot(t,cos(t),'r--')
xlabel('Time (s)');
ylabel('Function value');% label axis
title('Sin and Cos functions');%title of figure
legend('Sin','Cos');% to describe the lines plotted
xlim([0 2*pi]); %set limits for x axis
ylim([-1.4 1.4]); %set limits for y axis