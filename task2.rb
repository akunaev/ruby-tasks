months=["января", "февраля", "марта", "апреля", "мая", "июня", "июля", "августа", "сентября", "октября", "ноября", "декабря"]

d=ARGV[0].to_i
m=months.index(ARGV[1])+1
y=ARGV[2].to_i

date1=Time.new(y,m,d)

date2=Time.new(y,12,31)

days=((date2-date1)/(60*60*24)).floor

puts(days)