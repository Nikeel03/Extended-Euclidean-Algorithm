clear all
clc
%% *Outcome 4* 
% Declaration of Dividend and Divisor
dividend = [0 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf 0];
divisor = [10 3 6 13 0 -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf -Inf];

% Defiing the GF(2^4) field
field = gftuple([-1:2^4-2]',4,2);

[quotient,remainder] = gfdeconv(dividend,divisor,field);

disp('Result of Outcome 4')
disp('(x^15 - 1)/(x^4 + alpha^13x^3 + alpha^6x^2 + alpha^3x + alpha^10)')
disp(['Quotient = ','[',num2str(quotient),']'])
disp(['Remainder = ','[',num2str(remainder),']'])