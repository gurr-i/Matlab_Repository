%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           Monte Carlo Estimation Examples            %
%              with MATLAB Implementation              %
%                                                      %
% Author: Ph.D. M.Sc. Eng. Hristo Zhivomirov  02/08/16 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear, clc, close all

% number of trails
N = 1e7;
    
% flip the first and the second dice N times
x = randi([1 6], 1, N);
y = randi([1 6], 1, N);
    
% check if the event occurs
c = nnz(x == 6 & y == 6); 

% estimate the probability to obtain 6 and 6 
% if two dice are flipped simultaneously
% the real value is 1/36
Pest = c/N;
err = (Pest - 1/36)/(1/36)*100;
disp(['The estimated value is ' num2str(Pest)])
disp(['The error of the estimation is ' num2str(err) ' %'])
commandwindow
