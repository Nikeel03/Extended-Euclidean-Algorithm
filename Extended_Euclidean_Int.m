function [g,a,b] = Extended_Euclidean_Int(v,u)
    % Initializaton of the base coefficients
    a = 1;
    b = 0;
    a2 = 0;
    b2 = 1;
    
    while u ~= 0
        % Calculations of quotient and remainder
        quotient = floor(v/u);
        modulus = mod(v,u);
        
        % Computation based on TABLE METHOD using new shifted variables
        atemp = a - (quotient*a2);
        btemp = b - (quotient*b2);

        % Shift in variables to account for the new row for the TABLE
        % METHOD
        a = a2;
        b = b2;
        a2 = atemp;
        b2 = btemp;
        v = u;
        u = modulus;
    end
    % Update the GCD to be the last non-zero remainder
    g = v;
end