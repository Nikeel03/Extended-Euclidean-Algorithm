clear all
clc
%% *Outcome 5* 
% Declaration of Dividend and Divisor polynomials
dividend = [0 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf 0];
divisor = [10 3 6 13 0];

% Defiing the GF(2^4) field
field = gftuple([-1:2^4-2]',4,2);

% Calling of function
[g,a,b] = Extended_Euclidean_GF(dividend,divisor,field);

disp('Result of Outcome 5')
disp('Extended_Euclidean_GF function: (g,a,b)')
disp(['(','[',num2str(g),']',',',num2str(a),',',num2str(b),')']);