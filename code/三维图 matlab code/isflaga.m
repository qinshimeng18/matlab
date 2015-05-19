function isflaga(t_a)
global temp;
if temp(13) == 1
    temp(6)=temp(6)+1;
    if t_a>temp(2)
        temp(13)=0;
    else
        temp(13)=1;
    end
else
    if t_a<=temp(1)
        temp(13)=1;
    else
        temp(13)=0;
    end
end
