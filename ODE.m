function dy = ODE(t, y, p)
% an ode example, this function has three outputs. Replace this with your own function.
    dy = zeros(3,1);
    dy(1) = y(1) + 2 * p.p1;
    dy(2) = y(2) + 3 * p.p2 + 1/p.p5;
    dy(3) = y(3) + 4 * p.p3 + 1 / p.p4;
end
