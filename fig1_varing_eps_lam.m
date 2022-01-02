clear; clc; close all;

t0 = 0;
tfinal = 500;
y0 = [20;20];

alpha = 0.1; beta = 0.01; 
delta = 0.02; gam = 0.1;

% 4 cases
% eps = 0; lamda = 0;
% eps = -0.001; lamda = 0.001;
% eps = -0.01; lamda = 0.01;
eps = -0.1; lamda = 0.1;

[t,y] = ode23(@modified_lotka,[t0 tfinal],y0);

plot(y(:,1), y(:,2), 'b', 'LineWidth', 1)
hold on;
% vectfield(@modified_lotka,0:2:20, 0:6:60); 


vectfield(@modified_lotka,0:3:30, 0:6:60); 
% vectfield(@modified_lotka,0:15:150, 0:25:250); 
% vectfield(@modified_lotka,20:7.5:85, 0:12:120);   %% 3
% vectfield(@modified_lotka,0:15:150, 0:25:250);   %% rev 3
% vectfield(@modified_lotka,20:2:40, 20:3.5:55);   %% 4
% vectfield(@modified_lotka,0:15:150, 0:25:250);   %% rev 4

xlabel('Prey', 'Fontsize', 15)
ylabel('Predator', 'Fontsize', 15)

