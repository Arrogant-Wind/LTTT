function y= RK4(f,a,b,n,c)
%y'=f(x,y), a<x<b
%y(a)=c
h=(b-a)/n;
x=a:h:b;
y=zeros(1,length(x));
y(1)=c;
for i=1:1:length(y)-1
    k1=h*f(x(i),y(i));
    k2=h*f(x(i)+h/2,y(i)+k1/2);
    k3=h*f(x(i)+h/2,y(i)+k2/2);
    k4=h*f(x(i)+h,y(i)+k3);
    y(i+1)=y(i)+(k1+2*k2+2*k3+k4)/6;
end
plot(x,y,'--gs');
hold on;
u=0:0.0001:4;
%syms u;
f1=u.^3/3- u.^2+4*u;
plot(u,f1)




