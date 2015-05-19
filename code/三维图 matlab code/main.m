rr=25:0.1:27;
mm=19:0.1:21;
[X,Y]=meshgrid(rr,mm);
global temp;
i=0;
j=0;
Z=X*0+Y*0;
for r=25:0.1:27
	i=i+1;
	for m=19:0.1:21
		j=j+1;
		testmain(r,m);
		Z(j,i)=temp(14);
		%clear;
	end
	j=0;
end
surf(X,Y,Z);
xlabel('x-r');
ylabel('y-m');
zlabel('z-money')
