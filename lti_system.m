clear
clear all
clc

x = (20:60);
a = 1;
b = 1;
f = inline('2.*x', 'x');%function

x1 = a*x;%multiplying the function by a factor
x2 = b*x;

sum1 = f(x1) + f(x2);%sum of functions
sum2 = f(x1 + x2);%function of sums

if(abs(sum1-sum2)<=10^-3) %to account for precision related errors 
    disp("system is linear");
else
    disp("system is non-linear");
end

t = 5; %timeshift
f_x1 = [ zeros(1,t), f(x1) ];
x = [zeros(1,t), x];
x1 = [zeros(1,t), x1];

y1 = timeshift(f_x1, x, t);%the function is subjected to delay
y2 = f(timeshift(x1, x, t));%function of x subjected to delay

if(abs(y1-y2)<=10^-3)
    disp("system is time invariant");
else
    disp("system is not time invariant");
end

