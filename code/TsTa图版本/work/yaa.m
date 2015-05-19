function ya(flaga,,flags,t_s,t_a,t)
global temp;
if flags==0&flaga==0
	temp(9)=-0.0278*(t_a - temp(5));
else if flags==1&flaga==0
	temp(9)=-0.0278*(t_a - temp(5)) + temp(6)*(t_s - t_a);
else if flags==0&flaga==1
	temp(9)=-0.0278*(t_a - temp(5)) + temp(6);
else if flags==1&flaga==0
	temp(9)=-0.0278*(t_a - temp(5)) + temp(6) + temp(6) * (t_s - t_a);
end