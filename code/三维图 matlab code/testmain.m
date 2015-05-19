function testmain(r,m)
ts(43201)=0;
ta(43201)=0;
flaga=0;flags=0;
timea=0;
global temp;
temp(1)=15;temp(2)=20;temp(3)=r;temp(4)=m;%hkrm
temp(5)=5;%temperature t0
temp(6)=0;%the time of guolu 
temp(7)=0;%the time of fengshan
temp(8)=0;%the ys==dys * time 1
temp(9)=0;%the ya==dya
temp(10)=pi/(12*3600); %w
temp(11)=0.21285;
temp(12)=0;% flags init 0 fengshan 
temp(13)=0;% flaga init 0 guolu
temp(14)=0;%money
ts(1)=5;ta(1)=18;
for t=1:43200
    t_a=ta(t);%current temperature of a
	t_s=ts(t);%current temperature of s
    isflags(t_s);%if s is to open 1 or close 0
    flags=temp(12);
    isflaga(t_a);%if a is to open 1 or close 0
    flaga=temp(13);
    ys(flags,t_s,t_a,t);
    ya(flaga,flags,t_s,t_a,t);
    ts(t+1)=t_s+temp(8);
    ta(t+1)=t_a+temp(9);
end
temp(14)=temp(6)*5.5/35700*2.2+temp(7)*0.8/3600*0.5;
%x=1:43201;
%plot(x,ts,'r',x,ta,'b')
%grid on
%xlabel('time')
%ylabel('temperature')
%title('temp/time')