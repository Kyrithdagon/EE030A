%Initial values
RS = 51000;
RF = 10000;
VS = 4;
t0 = -0.18;
C = 0.0047;
T = RS*C;

% Points
t = [-0.18, -0.14, -0.12, -0.10, -0.08, -0.06, -0.04, -0.02, 0.00, 0.02, 0.04, 0.06, 0.08, 0.10, 0.12];
t2 = [2.34, 2.36, 2.38, 2.40, 2.42, 2.44, 2.46, 2.48, 2.50, 2.52, 2.54, 2.56, 2.58, 2.60, 2.62];
vRF_points = [0.00, 0.32, 0.60, 0.88, 1.12, 1.36, 1.56, 1.72, 1.92, 2.08, 2.20, 2.32, 2.48, 2.56, 2.68];
vRF_points2 = [3.72, 3.44, 3.16, 2.88, 2.64, 2.40, 2.20, 2.04, 1.88, 1.72, 1.56, 1.48, 1.32, 1.20, 1.12];

% Equations
v = VS * exp(-(t-t0)/T) .* (t-t0);
it = -(VS/RS) * exp(-(t-t0)/T) .* (t-t0);

% Plotting Pt1 (Note: plot one at a time -_-)
% figure, hold on
% plot(t, vRF_points);
% plot(t, v)

% Plotting Pt2 (Note: plot one at a time -_-)
% plot(t2, vRF_points2)
plot(t2, it)

% Axis labels
xlabel('Time [ms]')
ylabel('Capacitor Voltage [V]')