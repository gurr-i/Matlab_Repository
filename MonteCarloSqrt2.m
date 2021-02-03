%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           Monte Carlo Estimation Examples            %
%              with MATLAB Implementation              %
%                                                      %
% Author: Ph.D. M.Sc. Eng. Hristo Zhivomirov  02/08/16 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear, clc, close all

% generate a set of random numbers x(0, 2)
x = 2*rand(1, 1e7);

% square the numbers
y = x.^2;

% find all x^2 < 2
z = y(y<2);

% estimate sqrt(2) as a probability ratio
% the real value is approx. 1.4142
sqrt2est = 2*length(z)/length(y);
err = (sqrt2est - sqrt(2))/sqrt(2)*100;
disp(['The estimated value is ' num2str(sqrt2est)])
disp(['The error of the estimation is ' num2str(err) ' %'])
commandwindow