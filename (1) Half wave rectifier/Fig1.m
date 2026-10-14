clc;
clear;
close all;

% Parameters
A = 10;          % Peak voltage (V)
f = 50;          % Frequency (Hz)
T = 1/f;         % Period (s)

% Time vector: 0 to 40 ms
t = linspace(0, 0.04, 1000);

% Sinusoidal AC voltage
Vin = A * sin(2*pi*f*t);

% Convert time to milliseconds
t_ms = t * 1000;

% Plot
figure;

plot(t_ms, Vin, 'LineWidth', 2);
hold on;

% Zero-voltage reference line
yline(0, 'LineWidth', 1);

% Graph formatting
title('Sinusoidal AC Input');
xlabel('Time (ms)');
ylabel('Voltage (V)');

legend('Input AC voltage', 'Location', 'northeast');

grid on;

xlim([-2 42]);
ylim([-11 11]);

xticks(0:5:40);
yticks(-10:5:10);

set(gca, 'FontSize', 12);