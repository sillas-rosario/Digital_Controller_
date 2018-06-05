



close all;
clear all;
clc;
s=tf('s')
t=0.3;
funcao=1/(8*s^2 +6*s+1)
step(funcao)
legend('Sistema para malha aberta')
grid on 


sisotool(funcao)


% sisotool retornou o controlador :
controlador= (5.3818*(s+0.444)*(s+0.43))/s
controlador_discreto=c2d(controlador,t,'tustin')
% Funcao de transferencia no sistema discreto:

funcao_discreta=c2d(funcao,t,'tustin')
sisotool(funcao_discreta)



%% Questao 6


funcao=1/(8*s^2 +6*s+1)
controlador=1.22*(1+4.9*s)/s

sistema_analogico=funcao*controlador

for T=3:3:9
    
    sistema_discreto=c2d(sistema_analogico,T,'tustin');
    %malha_fechada=feedback(sistema_discreto,1);
    step(sistema_discreto)
    hold on
end