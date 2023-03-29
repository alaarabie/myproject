
        beta = (k2 : (k1 - k2)/500 : k1); 
        len_beta = length(beta);
        u = sqrt(k1^2 - beta.^2); 
        w = sqrt(beta.^2 - k2^2);
        Jm = besselj(m,u*a); 
        Km = besselk(m,w*a); 
        J_mplus1 = besselj(m+1,u*a); 
        K_mplus1 = besselk(m+1,w*a); 
        J_prime = (m./(u*a)).*Jm - J_mplus1;
        K_prime = (m./(w*a)).*Km - K_mplus1;
        function1 = (J_prime./(u.*Jm)) + (K_prime./(w.*Km)); 
        function2 = (k1^2)*(J_prime./(u.*Jm))