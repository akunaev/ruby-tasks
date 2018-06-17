i1=ARGV[0]
i1_l=ARGV[0].length
a=ARGV[1].to_i
b=ARGV[2].to_i

digits=('0'..'9').to_a + ('a'..'z').to_a
r1=0
for i in 0..(i1_l-1)
digit=digits.index(i1[i])
p=i1_l-i-1
dd=a**p
r1=r1+digit*dd
end

r2_l=(Math.log(r1,b)).floor+1

r2=""
for i in 0..(r2_l-1)
p=r2_l-1-i
dd=b**p
digit=(r1/dd).floor
r2=r2+digits[digit].to_s
r1=r1%dd
end

puts(r2)