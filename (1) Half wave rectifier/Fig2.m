clc;
clear;
close all;

% Parameters
A = 10;          % Peak input voltage (V)
f = 50;          % Frequency (Hz)
Vd = 0.7;        % Diode forward voltage drop (V)

% Time vector: 0 to 40 ms
t = linspace(0, 0.04, 1000);

% Input AC voltage
Vin = A * sin(2*pi*f*t);

% Half-wave rectification with diode voltage drop
Vout = max(Vin - Vd, 0);

% Convert time to milliseconds
t_ms = t * 1000;

% Plot
figure;

plot(t_ms, Vout, 'LineWidth', 2);

title('Half-Wave Rectified Output');
xlabel('Time (ms)');
ylabel('Voltage (V)');

legend('Rectified output', 'Location', 'northeast');

grid on;

xlim([-2 42]);
ylim([-0.5 9.8]);

xticks(0:5:40);
yticks(0:2:8);

set(gca, 'FontSize', 12);