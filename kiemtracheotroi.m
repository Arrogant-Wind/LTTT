function p= kiemtracheotroi(A)
for i = 1:1: length(A)
    a=sum(A(i,:))-A(i,i)
    if abs(A(i,i))<= abs(sum(A(i,:))-A(i,i))
       p= false;
        return;
    end
    
end
p= true;

        
