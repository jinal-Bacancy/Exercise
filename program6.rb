puts "How many cities : "
total_city=gets.chomp.to_i

puts "Enter temperature with suffix c/f - c for 'celcious' , f for 'fahrenhit' "
i=1
array1=[]
arr_celcious=[]
arr_fahrenhit=[]

c=0
f=0

total_city.times do |x|
	puts "Enter temperature of city #{i} :" 
	array1[x]=gets.chomp
	if(array1[x].to_s.include?('c'))
		arr_celcious[c]=array1[x].chop
		c += 1
	end

	if(array1[x].to_s.include?('f'))
		arr_fahrenhit[f]=array1[x].chop
		f += 1
	end
	i=i+1
end

p array1
puts "Array of Temperature - celcious"
p arr_celcious
puts "Array of Temperature - fahrenhit"
p arr_fahrenhit
cnt=arr_fahrenhit.length

j=0
k=0


while j.to_i < cnt-1
	while k.to_i<cnt-j.to_i-1
		if arr_fahrenhit[k] < arr_fahrenhit[k+1]
			temp=arr_fahrenhit[k]
			arr_fahrenhit[k]=arr_fahrenhit[k+1]
			arr_fahrenhit[k+1]=temp
		end	
		k=k+1
	end
	j=j+1
end

p arr_fahrenhit