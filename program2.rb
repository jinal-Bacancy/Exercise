puts "Enter Length (inch) :"
length=gets.to_i

puts "Enter Width(inch) :"
width=gets.to_i

roomarea=length*width
blocks_required=roomarea/(12*12)

puts "Minimum number of blocks required are :" + blocks_required.to_s

#cost per peice =30+2 =32
cost=blocks_required*32

puts "Minimum cost of carpet is :" +cost.to_s