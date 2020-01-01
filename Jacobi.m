function [x,itr]=Jacobi(A, B,X0,tol,nMax)
x=X0;
n=size(x,1);
err=1;
itr=0;
T=abs(norm(B)/(1-norm(B)));
while err>tol && itr<nMax
    xk=x
    
    for i=1:n
        disp([itr+1,i]);
        sigma=0
        
        for j=1:n
            
            if j~=i
                sigma=sigma+A(i,j)*xk(j)
            end
            
        end
        
        x(i)=(1/A(i,i))*(B(i)-sigma);
        disp(x(i));
    end
    
    itr=itr+1;
    err=T*norm(xk-x,2);
end