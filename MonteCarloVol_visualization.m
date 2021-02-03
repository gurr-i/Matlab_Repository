%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           Monte Carlo Estimation Examples            %
%              with MATLAB Implementation              %
%                                                      %
% Author: Ph.D. M.Sc. Eng. Hristo Zhivomirov  02/08/16 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear, clc, close all

% generate a set of random numbers x(0, 1), y(0, 1) and z(0, 1)
x = rand(1, 10e3);
y = rand(1, 10e3);
z = rand(1, 10e3);

% visualizing
[X, Y] = meshgrid(0:0.001:1, 0:0.001:1);
Z = sqrt(1 - X.^2 - Y.^2);
Z(imag(Z) ~= 0) = NaN;

figure(1)
surf(X, Y, Z)
shading interp
hold on
axis([0 1 0 1 0 1])
colormap([0, 0, 0]) 
view(45, 45)
alpha(0.25)
set(gca, 'FontName', 'Times New Roman', 'FontSize', 14)
title('1/8 of the unit sphere volume in Cartesian coordinates')
text(-1, 1, -2, {'The volume of the sphere could be represented' 
                 'as eight times the ratio of the points inside'
                 'the sphere section vs. all points i.e., as eight'
                 'times the probability a point to be in the sphere'
                 'section.'}, ...
                 'EdgeColor', 'k', 'FontName', 'Times New Roman', ...
                 'FontSize', 12, 'FontWeight', 'bold')

for k = 1:length(x)
    
    if x(k)^2 + y(k)^2 + z(k)^2 <= 1
        
        % the point is inside the sphere, show it in red
        plot3(x(k), y(k), z(k), '.r')
        
    else
        
        % the point is outside the sphere, show it in blue
        plot3(x(k), y(k), z(k), '.b')
        
    end
      
drawnow update
    
end

% find all x for which x.^2 + y.^2 + z.^2 <= 1
w = x(x.^2 + y.^2 + z.^2 <= 1);

% estimate the unit sphere volume as a probability ratio
% the real value is approx. 4.1888
volest = 8*length(w)/length(x);
err = (volest - 4.1888)/4.1888*100;
disp(['The estimated volume is ' num2str(volest)])
disp(['The error of the estimation is ' num2str(err) ' %'])
commandwindow