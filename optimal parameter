p = Parameters(); 

initial_guess = [0.03, 1, 1, 10]; % non-zero number
lb = [0.01, 0.5, 0.5, 5];  % lower boundary 
ub = [0.1, 2, 2, 15]; % upper boundary

measured_value= 20;

options = optimoptions('fmincon', 'Display', 'iter', 'Algorithm', 'interior-point');

% Perform optimization
[optimal_params, fval] = fmincon(@(params) error_function(params, measured_value), ...
                                 initial_guess, [], [], [], [], lb, ub, [], options);

disp('Optimal Parameters:');
disp(optimal_params);
disp('Final Error:');
disp(fval);
