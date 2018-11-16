function x=mulmat(A,B)
if rows(A)==columns(B)
    for i=1:rows(A)
        for j=1:columns(B)
            s=0;
            for k=1:columns(A)
                s=s+A(i,k)*B(k,j);
            end
            x(i,j)=s;
        end
    end
endif
endfunction