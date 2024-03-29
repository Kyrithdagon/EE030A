% ee001la_Lab3_Part1_voltage_divider_numeric.m
% --------------------------------------------
% Course: EE001LA
% Project: Lab 3, Part 1.2.2
% Purpose: Numerical Solution of a Linear System of Equations obtained
% while solving the voltage divider circuit
%
% Usage: 1. Change the Matlab's working directory to the one where
% the file containing this code is located
% 2. At the command prompt type:
%
% >> ee001la_Lab3_Part1_voltage_divider_numeric

% ----- Set circuit parameters -------
VS = 10 ;% voltage source, [V]
R1 = 5100 ;% resistor, [Ohm]
R2 = 10000 ;% resistor, [Ohm]
R3 = 4700 ;% resistor, [Ohm]

% ----- Form matrix A ----------------
A = [ 0 0 0 0 0 -1 1 -1 ; ...
    0 0 0 0 -1 0 -1 1; ...
    %0 0 0 0 1 1 0 0; ...
    -1 1 1 0 0 0 0 0; ...
    0 0 1 1 0 0 0 0; ...
    %-1 1 0 -1 0 0 0 0; ...
    1 0 0 0 0 0 0 0; ...
    0 1 0 0 0 -R1 0 0; ...
    0 0 1 0 0 0 -R2 0; ...
    0 0 0 1 0 0 0 -R3];
    
% ----- Form b, the RHS --------------
b = [0 0 0 0 VS 0 0 0]';

% ----- Compute the inverse of A -----
Ainv = inv(A)

% ----- Find the solution of the system of equations -----
x = Ainv * b;

% ----- NOTE: the previous two steps could have been done in one step
% x = A\b; % uncomment this line if needed

% ----- Assign the result to reference variables ---------
vS = x(1)
vR1 = x(2)
vR2 = x(3)
vR3 = x(4)
iS = x(5) * 1000
iR1 = x(6) * 1000
iR2 = x(7) * 1000
iR3 = x(8) * 1000
