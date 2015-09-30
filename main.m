clc; close all;

height   = [0; 0; 10];
Velocity = [0; 0; 0];

time = 0 : 0.1 : 10;

[T,G] = ode45(@Model, time, [height Velocity]);

figure(1)
plot(T, G(:, 3)); grid on
title('Изменение высоты')

figure(2)
plot(T, G(:, 6)); grid on
title('Изменение скорости')