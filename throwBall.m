% question 1 throwBall
hi=1.5;% in meter(m)
g=9.8;%acceleration due to gravity in m/s^2
v=4;%m/s
theta=45;%degrees
% make a time vector
t=linspace(0,1,1000);
x=v*cos(theta/180*pi)*t;%x and y positions as a function of time
y=hi+v*sin(theta/180*pi)*t-(1/2*g*t.^2);
ind=find(y<0,1,'first');% find when it hits the ground
distance=x(ind);
disp(['The ball hits the ground at a distance of' num2str(distance) 'meters'])
figure % to plot the ball's trajectory
plot(x,y)
xlabel('Distance (m)');
ylabel('Ball Height (m)');
title('Ball Trajectory');
hold on % plot the ball's trajectory
plot([0 max(x)],[0 0],'k--');