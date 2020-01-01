function p = noisuy_newton(X, Y) 
    % Noi suy moc bat ky
    % Tra ve da thuc noi suy
    syms x;
    n = length(X);
    f = zeros(n,n);
    f(:, 1) = Y';
    %Xay dung bang ty hieu
    for c = 2:n
        for r = 1:n+1-c
            p1 = f(r+1, c-1) - f(r, c-1);
            p2 = X(r+c-1) - X(r);
            f(r, c) = p1 / p2;
        end
    end
    
    p = Y(1);
    t = 1;
    for r = 1:n-1
        t = t * (x - X(r));
        p = p + t*f(1, 1 + r);
    end
    disp('Bang ty hieu');
    disp(f);
    fprintf('P(x) = ');
    disp(simplify(p));
    
end