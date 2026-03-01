clear;
clc;

disp('M-plik kreslący wykres dwoch funkcji: y1 i y2')
disp('')

x1=-5:0.1:20;
x2=0.1:0.1:20; %bo logx daje warunek x>0


k1=input('Podaj parametr k1 który jest nieujemy: ');

while k1 < 0
    k1 = input('Podaj parametr k1 który jest nieujemy: ');    %parametr k1 jest nieujemnny
end

k2=input('Podaj parametr k2 który jest ujemny: ');  

while k2 >= 0
    k2 = input('Podaj parametr k2 który jest ujemny: ');     %parametry k2 jest ujemny
end

y1=2 * x1 + k1;
y2=k2 * log10(x2);

subplot(2,1,1)
plot(x1,y1);
grid;
title("Wykres funkcji y1");
xlabel('x','FontSize',12,'FontWeight','bold');
ylabel('y','FontSize',12,'FontWeight','bold');

subplot(2,1,2)
plot(x2,y2);
grid;
title("Wykres funkcji y2");
xlabel('x','FontSize',12,'FontWeight','bold');
ylabel('y','FontSize',12,'FontWeight','bold');
