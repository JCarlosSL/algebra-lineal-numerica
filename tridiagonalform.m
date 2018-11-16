function x=tridiagonalform(a,b,y)
	n=length(a);
	a1=zeros(1,n);
	y1=zeros(1,n);
	a1(1)=a(1);
	y1(1)=y(1);
	
	for i=2:n
		a1(i)=a(i)-(b(i-1)/a1(i-1))*b(i-1);
		y1(i)=y(i)-(b(i-1)/a1(i-1))*y1(i-1);
	end
	
	x=zeros(1,n);
	x(n)=y1(n)/a1(n);
	
	for i=n-1:-1:1
		x(i)=(1/a1(i))*(y1(i)-b(i)*x(i+1));
	end
end