clear;
clc;

kp=4;
Ti=12.5;
Td=3.1;

sys1=tf(10, [0.15 3.05 1 0]);

sys2=tf(kp * [Ti*Td, Ti, 1], [Ti, 0]);

Go=series(sys1,sys2);
Gz=feedback(Go,1);
Ge = feedback(1, Go);

figure;
step(3*Gz);
hold on;
step(3*Ge);
hold on;

grid;
title('Odpowiedz skokowa układu regulacji i uchyb regulacji na wymuszenie x(t)=3(t)');
xlabel('Czas [s]');
ylabel('y(t)');
legend('Wyjscie kuładu y(t)', 'Uchyb regulacji e(t)');

