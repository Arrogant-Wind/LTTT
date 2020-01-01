function p=Noisuy_Lagrange(x,y)
  % Note: cac moc xi phai khac nhau
  % Gia tri tra ve cua ham la da thuc noi suy P
    h=poly(x);
    f=polyder(h);
    p=0;
    for i =1 : length(x)
      p=p+deconv(h,[1, -x(i)])/polyval(f,x(i))*y(i);
      
    end
    
    p=poly2sym(p);
    fprintf('da thuc P(x):');
    disp(p);
    
end
