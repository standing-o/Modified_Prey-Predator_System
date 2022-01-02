function yp = modified_lotka(t,y)
% modified predator-prey model.

% standard
alpha = 0.1; beta = 0.01; 
delta = 0.02; gam = 0.1;
eps = -0.1; lamda = 0.1;

yp = [(alpha*y(1) - beta*y(1)*y(2) + eps*delta*(y(1)^2)*y(2) - eps*gam*y(1)*y(2))/(1-eps*lamda*y(1)*y(2));...
    (delta*y(1)*y(2) - gam*y(2) + alpha*lamda*y(1)*y(2) - beta*lamda*y(1)*(y(2)^2))/(1-eps*lamda*y(1)*y(2));];
    
