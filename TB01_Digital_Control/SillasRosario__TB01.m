


clear all;
close all;
clc ;


s=tf('s')

G=1/(10*s+1)/(34*s+1)


%% Padé

n=2;  %Ordem
t=20; %Tempo de atraso

[num,den]=pade(t,n)
Fun_Pade=tf(num,den)


% Ft de malha aberta

F=series(Fun_Pade,G)
%sisotool(F)

%Resposta para entrada em degrau 
figure(1)
F2=F/(1+F)   %Malha Fechada
step(F2)
grid on

%% Exercicio 2 Smith

G2=G/(1+G)
figure(2)
step(G2)
grid on
sisotool(G)

