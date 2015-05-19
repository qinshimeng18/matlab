function isflags(t_s)
global temp;
if temp(12) == 1
    temp(7)=temp(7)+1;
    if t_s<=temp(3)
        temp(12)=0;
    else
        temp(12)=1;
    end
else
    if t_s>=temp(4)
        temp(12)=1;
    else
        temp(12)=0;
    end
end
