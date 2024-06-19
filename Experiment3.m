clear all
clc
%% *Outcome 3* 
% P(x) * Q(x)
% Declaration of P and Q polynomials
p = [0 -Inf 3 -Inf -Inf -Inf 3 7];
q = [-Inf -Inf 4 -Inf -Inf -Inf 10 -Inf];

% Defiing the GF(2^4) field
field = gftuple([-1:2^4-2]',4,2);

% Computation
product = gfconv(p,q,field);
disp('Result of Outcome 3')
disp('Answer for P(x) * Q(x)')
disp(['= ','[',num2str(product),']'])