function [g,a,b] = Extended_Euclidean_GF(v,u,field)
    % Initializaton of the base coefficients using alpha power values due
    % to this using polynomials
    a = 0;
    b = -Inf;
    a2 = -Inf;
    b2 = 0;

    while u ~= -Inf
        % Calculations of quotient and remainder
        [quotient,modulus] = gfdeconv(v,u,field);

        % If statement used to account for a 0 remainder which in alpha terms is either -1 or -Inf
        if modulus == 0
           modulus = -Inf;
        end

        % Computation based on TABLE METHOD using new shifted variables.
        % Since subtraction is the same as addition in GF(2^4) gfadd is utilized
        multiplication_01 = gfconv(b,quotient,field);
        atemp = gfadd(a,multiplication_01,field);
        multiplication_02 = gfconv(b2,quotient,field);
        btemp = gfadd(a2,multiplication_02,field);

        % Shift in variables to account for the new row for the TABLE
        % METHOD
        a = b;
        b = atemp;
        a2 = b2;
        b2 = btemp;
        v = u;
        u = modulus;
    end
    % Update the GCD to be the last non-zero remainder
    g = v;
end