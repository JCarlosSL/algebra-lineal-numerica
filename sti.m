function [x]=gaussinfe(A,b)
[n n]=size(A);
x=zeros(n,1);
x(1)=b(1)/A(1,1);
for i=2:n
  s=0;
  for j=1:n-1
    s=s+A(i,j)*x(j);
  end
  x(i)=(b(i)-s)/A(i,i);
end
endfunction