function G=cholesky(A)
	n=length(A);
    G=zeros(n,n);
    for k=1:n
        s=0;
        for j=1:k-1
            s=s+(G(k,j)*G(k,j));
        end
        r=A(k,k)-s;
        if r<=0
            error("no se define positivo");
        end
        G(k,k)=sqrt(r);
        for i=k+1:n
            s1=0;
            for j=1:k-1
                s1=s1+(G(i,j)*G(k,j));
            end
            G(i,k)=(A(i,k)-s1)/G(k,k);
        end
     end
endfunction