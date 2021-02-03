%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           Monte Carlo Estimation Examples            %
%              with MATLAB Implementation              %
%                                                      %
% Author: Ph.D. M.Sc. Eng. Hristo Zhivomirov  02/08/16 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear, clc, close all

% generate a set of random voltages u(10.8, 13.2) i.e., 12 V +/- 10%
u = 10.8 + 2.4*rand(1, 1e7);

% generate a set of random resistances r(900, 1100) i.e., 1000 Ohm  +/- 10%
r = 900 + 200*rand(1, 1e7);

% calculate the resistor's power dissipation
p = u.^2./r;

% estimate the worst-case value of the resistor's power dissipation
% the real value is 0.1936 W
pmaxest = max(p);
err = (pmaxest - 0.1936 )/0.1936 *100;
disp(['The estimated value is ' num2str(pmaxest)])
disp(['The error of the estimation is ' num2str(err) ' %'])
commandwindow