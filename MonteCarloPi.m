%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           Monte Carlo Estimation Examples            %
%              with MATLAB Implementation              %
%                                                      %
% Author: Ph.D. M.Sc. Eng. Hristo Zhivomirov  02/08/16 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear, clc, close all

% generate a set of random numbers x(0, 1) and y(0, 1)
x = rand(1, 1e7);
y = rand(1, 1e7);

% find all y for which x.^2 + y.^2 <= 1
z = x(x.^2 + y.^2 <= 1);

% estimate pi as a probability ratio
% the real value is approx. 3.1416
piest = 4*length(z)/length(x);
err = (piest - pi)/pi*100;
disp(['The estimated value is ' num2str(piest)])
disp(['The error of the estimation is ' num2str(err) ' %'])
commandwindow