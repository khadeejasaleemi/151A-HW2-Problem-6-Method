%this program calculates, using the method in problem 6,
    %the root of f=x+cos(x) with initial guess x0=-0.9;

clc;clear;close all;

x0=-0.9;%initial guess
tol=1e-10; %tolerance
f=@(x) x+cos(x); %function for which we want to find a root
df=@(x) 1-sin(x); %f'
d1=df(x0);
nmax=100; %max number of iterations
i=0; %set iteration counter
while (i<nmax && abs(f(x0))>tol) %while the num of iterations is less then nmax and |f(xn)|>tol 
    x0=x0-(f(x0)/d1); %do newt update
    i=i+1; %update iteration index

end
fprintf('\n Number of iterations: %d \n',i);
fprintf('\n Calculated root: %10.11f \n',x0);
fprintf('\n Residual: %10.11f \n',abs(f(x0)));