
        beta = (k2 : (k1 - k2)/500 : k1); 
        len_beta = length(beta);
        u = sqrt(k1^2 - beta.^2); 
        w = sqrt(beta.^2 - k2^2);
