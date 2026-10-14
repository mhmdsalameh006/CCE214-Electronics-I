clc;
clear;
close all;

% Parameters
Vm = 10;          % Peak voltage (V)
f = 50;           % Frequency (Hz)

% Time vector: 0 to 40 ms
t = linspace(0, 0.04, 1000);

% Sinusoidal input voltage
Vin = Vm * sin(2*pi*f*t);

% Convert time to milliseconds for plotting
t_ms = t * 1000;

% Plot
figure;

plot(t_ms, Vin, 'LineWidth', 2);

grid on;

title('Sinusoidal AC Input', 'FontSize', 16, 'FontWeight', 'bold');
xlabel('Time (ms)', 'FontSize', 13);
ylabel('Voltage (V)', 'FontSize', 13);

legend('Input AC voltage', 'Location', 'northeast');

xlim([0 40]);
ylim([-12 12]);

xticks(0:5:40);
yticks(-10:5:10);

set(gca, 'FontSize', 12);