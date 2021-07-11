function zval = RI(xval, yval)
    persistent x y z rsqr r0 r2 l k
    r0 = 2;
    x = xval;
    y = yval;
    [l, k] = size(x);
    rsqr = x.^2 + y.^2;
    
    % condition 1
    z(rsqr < r0^2) = 1;
    
    % conditoin 2
    r2 = rsqr((r0)^2 <= rsqr & rsqr <= (5*r0)^2);
    z((r0)^2 <= rsqr & rsqr <= (5*r0)^2) = sqrt(r2)./r0;
    
    % condition 3
    z(rsqr > (5*r0)^2) = 5;
    
    zval = reshape(z, [l k]);
end