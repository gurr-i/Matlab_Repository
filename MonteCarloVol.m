%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           Monte Carlo Estimation Examples            %
%              with MATLAB Implementation              %
%                                                      %
% Author: Ph.D. M.Sc. Eng. Hristo Zhivomirov  02/08/16 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear, clc, close all

% generate a set of random numbers x(0, 1), y(0, 1) and z(0, 1)
x = rand(1, 1e7);
y = rand(1, 1e7);
z = rand(1, 1e7);

% find all x for which x.^2 + y.^2 + z.^2 <= 1
w = x(x.^2 + y.^2 + z.^2 <= 1);

% estimate the unit sphere volume as a probability ratio
% the real value is approx. 4.1888
volest = 8*length(w)/length(x);
err = (volest - 4.1888)/4.1888*100;
disp(['The estimated volume is ' num2str(volest)])
disp(['The error of the estimation is ' num2str(err) ' %'])
commandwindow