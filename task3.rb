t1=ARGV[0].to_i
t2=ARGV[1].to_i

t=t1+t2

h=(t/3600).floor
m=((t-h*3600)/60).floor
s=t%(60)

tt=""
if h>0 then
	tt=tt+h.to_s+" "
	hours=case h
		when 1 then "час"
		when 2..4 then "часа"
		when 21 then "час"
		when 22..24 then "часа"
		when 31 then "час"
		when 32..34 then "часа"
		when 41 then "час"
		when 42..44 then "часа"
		when 51 then "час"
		when 52..54 then "часа"
		else "часов"
	end
	tt=tt+hours+" "
end

if ((h>0 && m==0) || m>0) then
	minutes=case m
		when 1 then "минута"
		when 2..4 then "минуты"
		when 21 then "минута"
		when 22..24 then "минуты"
		when 31 then "минута"
		when 32..34 then "минуты"
		when 41 then "минута"
		when 42..44 then "минуты"
		when 51 then "минута"
		when 52..54 then "минуты"
		else "минут"
	end
	tt=tt+m.to_s+" "+minutes+" "
end

secs=case s
	when 1 then "секунда"
	when 2..4 then "секунды"
	when 21 then "секунда"
	when 22..24 then "секунды"
	when 31 then "секунда"
	when 32..34 then "секунды"
	when 41 then "секунда"
	when 42..44 then "секунды"
	when 51 then "секунда"
	when 52..54 then "секунды"
	else "секунд"
end
tt=tt+s.to_s+" "+secs

puts(tt)
