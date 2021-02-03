%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           Monte Carlo Estimation Examples            %
%              with MATLAB Implementation              %
%                                                      %
% Author: Ph.D. M.Sc. Eng. Hristo Zhivomirov  02/08/16 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear, clc, close all

% generate a set of random numbers x(0, pi) and y(0, 1)
x = pi*rand(1, 1e7);
y = rand(1, 1e7);

% find all y < sin(x)
z = y(y<=sin(x));

% estimate the int of abs(sin(x)) for x(0, 2pi) as a probability ratio
% the real value is 4
intest = 2*pi*length(z)/length(x);
err = (intest - 4)/4*100;
disp(['The estimated value is ' num2str(intest)])
disp(['The error of the estimation is ' num2str(err) ' %'])
commandwindow