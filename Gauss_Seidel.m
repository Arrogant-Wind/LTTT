function [X,itr]=Gauss_Seidel(A,B,X0, tol,nMax)

itr=0;
X=X0;
err=100;
n=size(X,1);

T=abs(norm(B,2)/(1-norm(B,2)));
while err>tol && itr<nMax
    X_k=X;
    for i=1:n
        sigma=0;
        for j=1:i-1
            sigma=sigma+A(i,j)*X(j);
        end
                  
        for j=i+1:n
                sigma=sigma +A(i,j)*X_k(j); 
        end
       
        X(i)=(B(i)-sigma)/A(i,i);
       
    end
    err=T*norm(X-X_k,2);
    itr=itr+1;
end
