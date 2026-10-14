clc;
clear;
close all;

% Parameters
Vm = 10;          % Peak input voltage (V)
f = 50;           % Input frequency (Hz)
Vd = 0.7;         % Forward voltage drop of one diode (V)

% Time vector: 0 to 40 ms
t = linspace(0, 0.04, 1000);

% AC input signal
Vin = Vm * sin(2*pi*f*t);

% Full-wave bridge rectifier
% Two diodes conduct during each half-cycle
Vout = abs(Vin) - 2*Vd;

% Prevent negative output near zero crossings
Vout(Vout < 0) = 0;

% Convert time to milliseconds
t_ms = t * 1000;

% Plot
figure;

plot(t_ms, Vout, 'LineWidth', 2);

grid on;

title('Full-Wave Rectified Output', ...
      'FontSize', 16, ...
      'FontWeight', 'bold');

xlabel('Time (ms)', 'FontSize', 13);
ylabel('Voltage (V)', 'FontSize', 13);

legend('Rectified output', 'Location', 'northeast');

xlim([0 40]);
ylim([-1 10]);

xticks(0:5:40);
yticks(0:2:10);

set(gca, 'FontSize', 12);