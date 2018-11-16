function C=gramschmid(A)
	c=columns(A);
	r=rows(A);
	C(:,1)=A(:,1);
	for i=2:c
		s=0;
		proy=zeros(r,1);
		for j=1:i-1
			r1=0;
			r2=0;
			r1=C(:,j)'*A(:,i); 
			r2=C(:,j)'*C(:,j);
			proy=proy+((r1/r2)*C(:,j));
		end
		C(:,i)=A(:,i)-proy;
	end
endfunction