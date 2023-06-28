
clear all
clc

% Load matrices obtained in COMSOL (Disc.m)
load matrices.mat

% % Exploit sparse matrices
% A = sparse(A);
% B = sparse(B);
% C = sparse(C);
% E = sparse(E);

% Generate State-pace Model
sys = sss(A, B, C, [], E);

% Set Inputs (First trial)
u = [0.3, 0.4]; % COMSOL FEM RESULT: Probe1=28.8 Probe2=28.8 Probe3=28.8
% Set an adjastig value (Experimental)
T0=20.25;
% Reduce the model order 
sysr = tbr(sys, 58);
% Compute the ROM
opt = odeset('mass', sysr.E);
func = @(t,x) sysr.A*x + sysr.B*u';
[t,xr] = ode23s(func, [0:10:1000], sysr.x0, opt);
yr = sysr.C*xr'+sysr.D*u'+T0;
yr(:,101) % Results comparable to Comsol

% Changing Inputs
u1 = [0.1, 0.1]; % COMSOL FEM RESULT: Probe1=22.6 Probe2=22.6 Probe3=22.6
opt = odeset('mass', sysr.E);
func = @(t,x) sysr.A*x + sysr.B*u1';
[t,xr1] = ode23s(func, [0:10:1000], sysr.x0, opt);
yr1 = sysr.C*xr1'+sysr.D*u1'+T0;
yr1(:,101) % Results comparable to Comsol

% Chaning Inputs
u2 = [0, 0.1]; % COMSOL FEM RESULT: Probe1=21.35 Probe2=21.35 Probe3=21.35
opt = odeset('mass', sysr.E);
func = @(t,x) sysr.A*x + sysr.B*u2';
[t,xr2] = ode23s(func, [0:10:1000], sysr.x0, opt);
yr2 = sysr.C*xr2'+sysr.D*u2'+T0;
yr2(:,101) % Results comparable to Comsol

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Chaning MOR Method and repeating last calculation
sysr = modalMor(sys, 100);
% Repeting Last Calculations
u3 = [0, 0.1]; % COMSOL FEM RESULT: Probe1=21.35 Probe2=21.35 Probe3=21.35
opt = odeset('mass', sysr.E);
func = @(t,x) sysr.A*x + sysr.B*u3';
[t,xr3] = ode23s(func, [0:10:1000], sysr.x0, opt);
yr3 = sysr.C*xr3'+sysr.D*u3'+T0;
yr3(:,101) % Results comparable to Comsol

% NOTE: changed the MOR Method, but the previous adjusting factor was still
% good enough





