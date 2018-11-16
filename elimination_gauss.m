function [x y z]=elimination_gauss(A,b)
    f=rows(A);
    c=columns(A);
    n=length(b);
    for i=1:f-1
        mayor=abs(A(i,i));
        indice=i;
        for j=i+1:c
            if abs(A(j,i)) > mayor
                mayor = abs(A(j,i));
                indice = j;
            endif
        end
        auxiliar=A(i,:);
        A(i,:)=A(indice,:);
        A(indice,:)=auxiliar;
        auxiliar=b(i);
        b(i)=b(indice);
        b(indice)=auxiliar;
        for j=i+1:n
          m=A(j,i)/A(i,i);
          A(j,i)=0;
          for l=i+1:n
            A(j,l)=A(j,l)-m*A(i,l);
          end
          b(j)=b(j)-m*b(i);
        end
    end
    z=zeros(n,1);
    z(n)=b(n)/A(n,n);
    for k=n-1:-1:1
      s=0;
      for j=k+1:n
        s=s+A(k,j)*z(j);
      end
      z(k)=(b(k)-s)/A(k,k);
    end
    x=A;
    y=b;
endfunction
    