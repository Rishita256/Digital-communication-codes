clear
clc
clear all

x=[1:10]; h=[45:55];

convolution_result = my_conv(x,h);
correlation_result = my_conv(x, h(end:-1:1));

