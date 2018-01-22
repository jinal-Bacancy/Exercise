
puts "Enter number : "
number=gets.to_i

$ans = 1

	if number == 1
		puts "1="+(1).to_s
	elsif number == 2
		puts "1/2="+(1/2).to_s
	else
		i=1
		val2 = 1/2
		number.times do |i|
			$ans = $ans * i * val2.to_i 
			i = i + 1
		end
		puts "Answer is: " + $ans.to_s
	end
