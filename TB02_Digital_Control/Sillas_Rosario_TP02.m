
%%------------------------------------------------------------------------%
% TB02                                                                   
%                                                                         
% Contém a implementação para o trabalho prático 2.                       
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

n = 1; % Ordem da função de padé
t = 0.1408; % Tempo de retardo

% Função de transferência do sistema aproximado
G1 = 1/(1.1*s+1);  

% Função de padé
[num,den] = pade(t,n);

% Função de tranferência de padé
Gp = tf(num,den);

% Função de tranferência de malha aberta
sis = series(Gp,G1)
step(sis)
legend('Funçao 4 ordem','Funçao aproximada',4)

%% Exercicio 2 sisotool_02
G=1/(s+1)/(0.2*s+1)/(0.04*s+1)/(0.0008*s+1)

grid on
sisotool(G)


%% Exercicio 3 sisotool_03
 fun= Gp*G1
 sisotool(fun)
 
 
 
 