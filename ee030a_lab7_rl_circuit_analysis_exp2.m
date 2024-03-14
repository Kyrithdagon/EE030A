%Initial values
RS = 200;
RF = 200;
RL = 21;
L = 0.01;
VS = 4;
t0 = 0;
T = L/(RS+RF);
iL = 2;

% Points
t = [0.0000, 0.0064, 0.0096, 0.0104, 0.0136, 0.0160, 0.0184, 0.0200, 0.0232, 0.0272, 0.0296, 0.0312, 0.0360, 0.0384, 0.0448];
t2 = [2.496, 2.504, 2.512, 2.520, 2.528, 2.536, 2.544, 2.552, 2.560, 2.568, 2.576, 2.584, 2.592, 2.600, 2.624];
vRF_points = [1.72, 1.68, 1.64, 1.60, 1.56, 1.52, 1.48, 1.44, 1.40, 1.36, 1.32, 1.28, 1.24, 1.16, 1.12];
vRF_points2 = [-1.52, -1.42, -1.26, -1.16, -1.04, -0.96, -0.86, -0.78, -0.70, -0.64, -0.58, -0.52, -0.48, -0.42, -0.32];

% Equations
iL_on = (-RF*VS/((RS*RF)+(RS*RL)+(RF*RL)))*exp(-(t-t0)/T) + (RF*VS/((RS*RF)+(RS*RL)+(RF*RL)));
vRF_on = (RF*VS)/(RS+RF) - (RS*RF/(RS+RF))*iL_on;

% % Plotting Pt1 (Note: plot one at a time -_-)
% figure, hold on
% plot(t, vRF_points);
% plot(t, vRF_on)

% Equations Pt2
tON = (L*(RS+RF))/((RS*RF)+(RS*RL)+(RF*RL));
TOFF = L/(RL+ (RS*RF)/(RS+RF));
iL_off = (iL* tON* exp(-(t-tON)/TOFF)) .* (t-tON);
vRF_off = ((RF*RS)/(RF+RS))*iL_off;

% Plotting Pt2 (Note: plot one at a time -_-)
% plot(t2, vRF_off)
plot(t2, vRF_points2)

% Axis labels
xlabel('Time [ms]')
ylabel('Inductor Voltage [V]')
