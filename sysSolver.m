%%% Funciton computig state space model

function y = sysSolver(sys, u, time, timestep)

opt = odeset('mass', sys.E);
func = @(t,x) sys.A*x + sys.B*u';
[t,x] = ode23s(func, [0:timestep:time], sys.x0, opt);
y = sys.C*x'+sys.D*u';

end