clear;
clc;

disp('M-plik kreslacy odpowiedz skakowa obiektu inercyjnego drugiego rzedu')
disp('')

%--------------------PODPUNKT A---------------------

E = 0.4;

%Wartości nr.1
L1 = 1;
C1 = 1;

%Wartości nr.2
L2 = 2;
C2 = 2;

%Wartości nr.3
L3 = 3;
C3 = 3;

R1=2*E*sqrt(L1/C1);
R2=2*E*sqrt(L2/C2);
R3=2*E*sqrt(L3/C3);

sys1 = tf(1, [L1*C1 C1*R1 1]);
sys2 = tf(1, [L2*C2 C2*R2 1]);
sys3 = tf(1, [L3*C3 C3*R3 1]);

%---------------------------------------------------

%--------------------PODPUNKT B---------------------
To = 2;

%Wartości nr.4
L4 = 4;
C4 = 2;
R4 = 1;
%Wartości nr.5
L5 = 4;
C5 = 4;
R5 = 2;
%Wartości nr.6
L6 = 4;
C6 = 6;
R6 = 4;

%Wspólczynnik tłumienia: 
E4= (0.5*R4)*sqrt(C4/L4);
E5= (0.5*R5)*sqrt(C5/L5);
E6= (0.5*R6)*sqrt(C6/L6);

sys4 = tf(1, [To^2, 2*E4*To, 1]);
sys5 = tf(1, [To^2, 2*E5*To, 1]);
sys6 = tf(1, [To^2, 2*E6*To, 1]);
%---------------------------------------------------

figure(1);
step(sys1);
hold on
step (sys2);
hold on
step(sys3);
grid;
title('Odpowiedz skokowa dla roznych wartosci C, L')
xlabel('Czas');
ylabel('Uwy [V]');
legend('Uwy1 dla C = 1[F], L = 1[H]','Uwy2 dla C = 2[F], L = 2[H]','Uwy3 dla C = 3[F], L = 3[H]')

figure(2);
step(sys4);
hold on
step (sys5);
hold on
step(sys6);
grid;
title('Odpowiedz skokowa dla stalego okresu To')
xlabel('Czas');
ylabel('Uwy [V]');
legend('Uwy4 dla C = 2[F], L = 4[H], R = 1[Ohm]','Uwy5 dla C = 4[F], L = 4[H]. R = 2[Ohm]','Uwy6 dla C = 6[F], L = 4[H], R = 4[Ohm]')
