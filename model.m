function variable = model(params)
    p = Parameters();
    p.p1 = params(1);
    p.p2 = params(2);
    p.p3 = params(3);
    p.p4 = params(4);
    % make sure you have p1,p2,p3,p4 in Parameters object

    t_span = [0, 3*24*60*60];  % 3 days in seconds
    t_points = 0:600:t_span(2);  % Solve every 600 seconds (10 minutes)

    y0 = [-p.p2, p.p1]; % Initial state
    opts = odeset('RelTol', 1e-4, 'AbsTol', 1e-4);
    [t, y] = ode15s(@(t, y) ODE(t, y, p), t_points, y0, opts);

    variable = mean(y(:, 1)); 
end
