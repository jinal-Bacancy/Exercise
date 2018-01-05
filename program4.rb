count_even=0
count_odd=0

puts "How many numbers you want to insert : "
number=gets.chomp.to_i

i=0
array1=[]

number.times do |x|
	puts "Enter no" + x.to_s + ":" 
	array1[x]=gets.chomp
end

p array1

for i in array1 do
 if i.to_i%2==0
 	count_even=count_even+1
 else
 	count_odd=count_odd+1
 end
end

puts "Total odd:" + count_odd.to_s
puts "Total even:" + count_even.to_s