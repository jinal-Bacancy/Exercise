puts "Enter number(between 0 to 8): "
number=gets.to_i

case number
when number=1
	puts "output= 1-1 =" + (1-1).to_s
when number=2
	puts "output= 1*2 =" + (1*2).to_s
when number=3
	puts "output= (1+2)-3 =" + ((1+2)-3).to_s
when number=4
	puts "output= (2+3)-(1+4) = " + ((2+3)-(1+4)).to_s
when number=5
	puts "output= (1*2*3)+4-5 = " + ((1*2*3)+4-5).to_s
when number=6
	puts "output= (-(1*2*3*4)+(5*6)) = " + (-(1*2*3*4)+(5*6)).to_s
when number=7
	puts "output= ((1+(2*3*4))-(5+6+7)) = " + ((1+(2*3*4))-(5+6+7)).to_s

end
