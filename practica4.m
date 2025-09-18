
m = 10;       
r = 0.05;     % Radio del disco (m)
k = 100;      % Constante del resorte (N/m)
theta0 = 0;       % Ángulo inicial (rad)
dtheta0 = 2;      % Velocidad angular inicial (rad/s)
initial_conditions = [theta0; dtheta0];

% Definimos la función que representa el sistema de ecuaciones diferenciales
ode_function = @(t, x) [x(2); - (2*k/(3*m)) * x(1)];

% Tiempo de simulación
tspan = [0 10]; % Tiempo de simulación de 0 a 10 segundos

% Resolver la ecuación diferencial utilizando ode45
[t, x] = ode45(ode_function, tspan, initial_conditions);

% Graficar los resultados en una sola gráfica
figure;

% Graficar \theta (x1) y \dot{\theta} (x2) en el mismo gráfico
plot(t, x(:,1), 'b', 'LineWidth', 2); % Ángulo \theta en azul
hold on; % Mantener el gráfico actual
plot(t, x(:,2), 'r', 'LineWidth', 2); % Velocidad angular \dot{\theta} en rojo
hold off;

% Añadir título y etiquetas
title('Ángulo \theta y Velocidad Angular \dot{\theta} vs. Tiempo');
xlabel('Tiempo (s)');
ylabel('Valores');



% Añadir cuadrícula
grid on;
