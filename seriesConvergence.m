% seriesConvergence
% this script plots two series to verify that they converge to the
% analytical value
% define the constants
p=0.99;
k=0:1000;
% calculate each term in the series
geomSeries=p.^k;
% calculate the infinite sum
theoreticalValue=1/(1-p);
% plot theory and cumulative sum
figure
plot([0 max(k)],theoreticalValue*ones(1,2),'r');
hold on
plot(k,cumsum(geomSeries));
xlabel('Index');
ylabel('Sum');
title(['Convergence of geometric series with p=' num2str(p)]);
legend('Infinite sum','Finite sum');
% define the new constants
p=2;
n=1:500;
% calculate each term in the p-series
pSeries=(1./n).^p;
% calculated theoretical answer, which is the solution to the baselproblem
baselValue=pi^2/6;
% plot theory and cumulative sum
figure
plot([1 max(n)],baselValue*ones(1,2),'r');
hold on
plot(n,cumsum(pSeries));
xlabel('Index');
ylabel('Sum');
title('Convergence of p-series with p=2');
legend('Infinite sum','Finite sum');