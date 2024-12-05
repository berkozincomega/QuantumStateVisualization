% Parameters
E0 = 1; % Amplitude
omega = 2*pi; % Angular frequency
tMax = 0.3; % Time range
tSteps = 200; % Number of time steps

% Time vector
t = linspace(0, tMax, tSteps);

% Definition of the electric field components
Ex = E0 * cos(omega * t); % Component in the X direction
Ey = E0 * sin(omega * t); % Component in the Y direction

% Start of the plot
figure;
hold on;
axis equal;
xlim([-E0, E0]);
ylim([-E0, E0]);
xlabel('E_x');
ylabel('E_y');
title('Circularly Polarized Light');

% Animation for vectors rotating over time
for k = 1:tSteps
    % Get the electric field components
    ex = Ex(k);
    ey = Ey(k);

    % Vector drawing
    quiver(0, 0, ex, ey, 0, 'LineWidth', 2, 'MaxHeadSize', 1, 'Color', 'r');
    
    % Draw an arrow to indicate the direction of rotation
    quiver(0, 0, ex, ey, 0, 'LineWidth', 1, 'MaxHeadSize', 1, 'Color', 'b');
    
    % Update the plot
    drawnow;
end
