function [x1,k]= Tieptuyen_hung(f,a,b,ep,Max)
format long;
k=1;
%Xet dau
if subs(diff(f,2),a) >0 
    sign =1;
else sign = -1;

end
%Chon x0
if subs(f,a)*sign>0 
    x0=a;
else x0=b;
end
x1= x0 - subs(f,x0)/subs(diff(f),x0);
%Chon m
if abs(subs(diff(f),a))> abs(subs(diff(f),b))
    m= abs(subs(diff(f),b));
else
    m= abs(subs(diff(f),a));
end
%Bat dau lap lan` 2 
while abs(subs(f,x1))/m > ep && k<Max
    x0= x1;
    x1= x0-subs(f,x0)/subs(diff(f),x0);
    k=k+1;
end
x1= double(x1);
end
    
