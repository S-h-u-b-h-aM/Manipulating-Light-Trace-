function zval = mu(xval, yval)
    persistent x y z rsqr r0 r2 l k
    r0 = 5;
    x = xval;
    y = yval;
    [l, k] = size(x);
    rsqr = x.^2 + y.^2;
    
    % condition 1
    z(rsqr < (r0/5)^2) = 5;
    
    % conditoin 2
    r2 = rsqr((r0/5)^2 < rsqr & rsqr < r0^2);
    z((r0/5)^2 < rsqr & rsqr < r0^2) = r0./sqrt(r2);
    
    % condition 3
    z(rsqr > r0^2) = 1;
    
    zval = reshape(z, [l k]);
end