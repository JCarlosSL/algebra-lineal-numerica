function x=gausspp(A,b)
n=length(A);
for k=1:n-1
    maximo=abs(A(k,k)); ind=k;
    for r=k+1:n
        if abs(A(r,k))>maximo
            maximo=abs(A(r,k));
            ind=r;
        end
    end
    aux=A(k,:);A(k,:)=A(ind,:);A(ind,:)=aux;
    aux=b(k),b(k)=b(ind);b(ind)=aux;
end
endfunction
