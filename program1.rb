puts "This program calculate BMI for adults"

puts "Enter Weight (in pounds) :"
weight=gets.to_i

puts "Enter Height(inch) :"
height=gets.to_i

puts "BMI = " + weight.to_s + "*703 /" + height.to_s + "**2 = " + (weight*703/height**2).to_s
ans=(weight*703/height**2)

if ans.to_i <= 18.5
	puts "You are underweight"
elsif ans.to_i >18.5 && ans.to_i <25
	puts "You are ideal"
elsif ans.to_i >25
	puts "You are overweight"
end
		
	