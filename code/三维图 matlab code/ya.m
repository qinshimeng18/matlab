function ya(flaga,flags,t_s,t_a,t)
global temp;
if flags==0&flaga==0
	temp(9)=-0.01*(t_a - temp(5));
elseif flags==1&flaga==0
	temp(9)=-0.01*(t_a - temp(5)) + 0.00387*8*(t_s - t_a);
elseif flags==0&flaga==1
	temp(9)=-0.01*(t_a - temp(5)) + temp(11);
elseif flags==1&flaga==1
	temp(9)=-0.01*(t_a - temp(5)) + temp(11) + 0.00387*8*(t_s - t_a);
end