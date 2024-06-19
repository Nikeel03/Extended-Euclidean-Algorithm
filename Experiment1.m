clear all
clc
%%
% Test data with given u and v integers
v = 48;
u = 18;
%% *Outcome 1 - Extended Euclidean Algorithm* 
% Calling of functions
[g1,a1,b1] = Extended_Euclidean_Int(v,u);
[g2,a2,b2] = gcd(v,u);

disp('Result of Outcome 1')
disp('ExtendedEuclideanInt function: (g,a,b)')
disp(['(',num2str(g1),',',num2str(a1),',',num2str(b1),')']);
disp('Inbuilt Matlab gcd function: (g,a,b)')
disp(['(',num2str(g2),',',num2str(a2),',',num2str(b2),')']);