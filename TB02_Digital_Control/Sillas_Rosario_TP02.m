
%%------------------------------------------------------------------------%
% TB02                                                                   
%                                                                         
% Cont�m a implementa��o para o trabalho pr�tico 2.                       
%                                                                         
% Aluno: Sillas Rosario Costa                                      
% Data: 15/03/2016                                                        
%-------------------------------------------------------------------------%
%%
clear all
close all
clc
s = tf('s');

G=1/(s+1)/(0.2*s+1)/(0.04*s+1)/(0.0008*s+1)
step(G)
grid on
hold on

%% Exercicio 1

n = 1; % Ordem da fun��o de pad�
t = 0.1408; % Tempo de retardo

% Fun��o de transfer�ncia do sistema aproximado
G1 = 1/(1.1*s+1);  

% Fun��o de pad�
[num,den] = pade(t,n);

% Fun��o de tranfer�ncia de pad�
Gp = tf(num,den);

% Fun��o de tranfer�ncia de malha aberta
sis = series(Gp,G1)
step(sis)
legend('Fun�ao 4 ordem','Fun�ao aproximada',4)

%% Exercicio 2 sisotool_02
G=1/(s+1)/(0.2*s+1)/(0.04*s+1)/(0.0008*s+1)

grid on
sisotool(G)


%% Exercicio 3 sisotool_03
 fun= Gp*G1
 sisotool(fun)
 
 
 
 