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

subplot(2,1,1);
step(3*Gz);
grid;
title('Odpowiedz skokowa układu regulacji');
xlabel('Czas [s]');
ylabel('y(t)');

subplot(2,1,2);
step(3*Ge);
grid;
title('Odpowiedz skokowa uchybu regulacji');
xlabel('Czas [s]');
ylabel('y(t)');
