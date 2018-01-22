#enter any number and it will give output 0 after performing {=,-,*,/}operaters 
puts "Enter number : "
number=gets.to_i

#$ans = 1
val2 = 1/2 #use number 1 and 2

#for number 1 and 2 output comes statically
if number == 1
	puts "Answer is : 1="+(1).to_s
elsif number == 2
	puts "Answer is : 1/2=" + val2.to_s
else
	i=3
	j=0
	arr=[]
	$ans = val2

	loop do
		$ans = $ans * i  #(1/2)*3 if i=3, if i=4 then ans=((1/2)*3) *4
		arr[j]=i #store i in array(used for printing numbers)
		i=i+1
		j=j+1
		
		break if i==(number.to_i)+1	
	end

	#for printing all numbers
	print "Answer is : (1/2)"
	pr = arr.map {|ele| print "* #{ele}"}
	puts " = " + $ans.to_s

end




