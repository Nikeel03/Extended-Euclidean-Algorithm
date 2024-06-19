clear all
clc
%% *Outcome 2* 
% Defiing the GF(2^4) field
field = gftuple([-1:2^4-2]',4,2);

% Declaration of alpha^4 and alpha^9 variables
alpha4 = 4; 
alpha9 = 9;  

% alpha^4 + alpha^9
sum = gfadd(alpha4,alpha9,field);
disp('Result of Outcome 2')
disp('Answer for alpha^4 + alpha^9')
disp(['= ',num2str(sum)])

% alpha^4 * alpha^9
mulli = gfmul(alpha4,alpha9,field);
disp('Answer for alpha^4 * alpha^9')
disp(['= ',num2str(mulli)])

% alpha^4 / alpha^9
quot= gfdiv(alpha4,alpha9,field); 
disp('Answer for alpha^4 / alpha^9')
disp(['= ',num2str(quot)])