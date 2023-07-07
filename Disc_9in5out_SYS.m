% Mattia Cipriani
% Reduction of a State-pace Model extracted from COMSOL

% Input and Output(t_final = 3000s) from Comsol. Time step = 100

% First Simulation
input1 = [10, 10, 10, 10, 10, 10, 10, 10, 10];
output1 = [4.7899, 4.4312, 4.3914, 4.4214, 4.4239];
% Second Simulation
input2 = [0, 8, 10, 100, 1, 100, 100, 50, 65];
output2 = [8.6963, 6.8351, 8.2943, 9.2605, 8.5879];
% Simulation
input3 = [8, 100, 100, 30, 1, 1, 1, 50, 62];
output3 = [7.8506, 9.4035, 7.3011, 5.3601, 7.2169]; 

% Load Matrices extracted from Comsol in Disc_9in5out.m
load matrices.mat

% % Exploit sparse matrices
% A = sparse(A);
% B = sparse(B);
% C = sparse(C);
% E = sparse(E);

% Generate State-pace Model from extracted matrixes
sys = sss(A, B, C, [], E);

% Performs model order reduction (First Technique)
sysr_mod5 = modalMor(sys, 5);
sysr_mod15 = modalMor(sys, 15);
sysr_mod50 = modalMor(sys, 50);
sysr_mod100 = modalMor(sys, 100);
sysr_mod200 = modalMor(sys, 200);

% % Performs model order reduction (Second Technique)
% sysr_tbr5 = tbr(sys, 5);
% sysr_tbr15 = tbr(sys, 15);
% sysr_tbr50 = tbr(sys, 50);
% sysr_tbr100 = tbr(sys, 100);
% sysr_tbr200 = tbr(sys, 200);

% Solve the State-pace Model with input1
ys = sysSolver(sys, input1, 3000, 100);

% Solve the sys obtained with Modal truncation order reduction
yr5 = sysSolver(sysr_mod5, input1, 3000, 100);
yr15 = sysSolver(sysr_mod15, input1, 3000, 100);
yr50 = sysSolver(sysr_mod50, input1, 3000, 100);
yr100 = sysSolver(sysr_mod100, input1, 3000, 100);
yr200 = sysSolver(sysr_mod200, input1, 3000, 100);

% % Solve the sys obtained with Truncated Balanced Realization
% yrt5 = sysSolver(sysr_tbr5, input1, 3000, 100);
% yrt15 = sysSolver(sysr_tbr15, input1, 3000, 100);
% yrt50 = sysSolver(sysr_tbr50, input1, 3000, 100);
% yrt100 = sysSolver(sysr_tbr100, input1, 3000, 100);
% yrt200 = sysSolver(sysr_tbr200, input1, 3000, 100);

% Plot the First Output (Probe 1) from the original State-pace model and
% the systems obtained with Modal truncation order reduction
plot(ys(1,:))
hold on
plot(yr5(1,:))
hold on
plot(yr15(1,:))
hold on
plot(yr50(1,:))
hold on
plot(yr100(1,:))
hold on
plot(yr200(1,:))
hold on
legend("sys","mod5","mod15","mod50","mod100","mod200");

% % Plot the First Output (Probe 1) from the original State-pace model and
% % the systems obtained with Truncated Balanced Realization
% plot(ys(1,:))
% hold on
% plot(yrt5(1,:))
% hold on
% plot(yrt15(1,:))
% hold on
% plot(yrt50(1,:))
% hold on
% plot(yrt100(1,:))
% hold on
% plot(yrt200(1,:))
% hold on
% legend("sys","tbr5","tbr15","tbr50","tbr100","tbr200");






