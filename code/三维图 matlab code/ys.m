function ys(flags,t_s,t_a,t)
global temp;
if flags == 1
    temp(8)=0.185*sin(temp(10)*t) - 0.007*(t_s - temp(5)) - 0.00129*8* (t_s - t_a);
else
    temp(8)=0.185*sin(temp(10)*t) - 0.007*(t_s - temp(5));
end