$gtotal=0.0
class Product
	def initialize(productid,qty)
      @productid,@qty = productid,qty
   end

   # accessor methods
   def printpid
      @productid
   end

   def printquantity
      @qty
   end

   def generate_bill
   		case @productid

   		when '1'
   			$price=25000
   			$GST=28
   			$pname="AC"
   		when '2'
   			$price=20000
   			$GST=20
   			$pname="Computer"
   		when '3'
   			$price=800
   			$GST=12
   			$pname="Keyboard"
   		when '4'
   			$price=300
   			$GST=15
   			$pname="Mouse"
   		when '5'
   			$price=4200
   			$GST=18
   			$pname="Pr"
   		when '6'
   			$price=7500
   			$GST=20
   			$pname="Scanner"
   		when '7'
   			$price=13500
   			$GST=10
   			$pname="Refrigerator"
   		when '8'
   			$price=18000
   			$GST=18
   			$pname="Oven"
   		when '9'
   			$price=28000
   			$GST=15
   			$pname="LCD(TV)"
   		when '10'
   			$price=2500
   			$GST=10
   			$pname="AC"
   		else 
   			puts "Wrong product-ID"
   		end

   		$tprice = ($price * @qty.to_i).to_f	
   		#puts "Total Price : "+ $tprice.to_s
   		$GST_count = ($GST * $tprice /100).to_f
   		$sprice = ($tprice + $GST_count).to_f
   		$gtotal=$gtotal+$sprice.to_f

   		puts " \t#{@productid}".ljust(5)+"#{$pname}".ljust(15)+"#{$price}".ljust(10)+ "#{$GST}".ljust(10)+"#{@qty}".ljust(5)+"#{$sprice}".ljust(12)+"#{$gtotal}".ljust(10)
   end
end

puts "Enter your name :"
name=gets.chomp
puts "Enter your Email-ID :"
email=gets.chomp
puts "Enter your Phone No :"
phno=gets.chomp

puts "\n\n---------------------Product Details----------------------\n\n"
puts "\tNo.".ljust(5)+"P_name".ljust(15)+"Price(Rs)".ljust(10)+"GST(%)".ljust(6)
puts "\t1".ljust(5)+"AC ".ljust(15)+"25000".ljust(10)+"28 ".ljust(6)
puts "\t2 ".ljust(5)+"Computer ".ljust(15)+"20000 ".ljust(10)+"20 ".ljust(6)
puts "\t3 ".ljust(5)+"Keyboard ".ljust(15)+"800".ljust(10)+"12 ".ljust(6)
puts "\t4 ".ljust(5)+"Mouse ".ljust(15)+"300 ".ljust(10)+"15 ".ljust(6)
puts "\t5 ".ljust(5)+"Pr ".ljust(15)+"4200 ".ljust(10)+"18 ".ljust(6)
puts "\t6 ".ljust(5)+"Scanner ".ljust(15)+"7500 ".ljust(10)+"20 ".ljust(6)
puts "\t7 ".ljust(5)+"Refrigerator ".ljust(15)+"135000 ".ljust(10)+"10 ".ljust(6)
puts "\t8 ".ljust(5)+"Oven ".ljust(15)+"18000".ljust(10)+"18 ".ljust(6)
puts "\t9 ".ljust(5)+"LCD(TV) ".ljust(15)+"28000 ".ljust(10)+"15 ".ljust(6)
puts "\t10 ".ljust(5)+"Speaker ".ljust(15)+"2500 ".ljust(10)+"10 ".ljust(6)


puts "How many products you want to buy?"
totalProduct=gets.to_i

arr_proID=[]
arr_qty=[]
i=0

totalProduct.times do |i|
	puts "Enter ProductID #{i}"
	arr_proID[i]=gets.chomp

	puts "Enter Quantity :"
	arr_qty[i]=gets.chomp	
end

puts "======================Bill======================="
puts "Name : \t #{name}"
puts "Email-ID : \t #{email}"
puts "Phone no: \t #{phno}"

puts " \tPid".ljust(5)+"Pname".ljust(15)+"Price".ljust(10)+ "GST".ljust(10)+"Qty".ljust(5)+"Sellprice".ljust(12)+"Grandtotal".ljust(10)
#p arr_qty
#p arr_proID

i=1

totalProduct.times do |i|
	productid=arr_proID[i]
	#puts "productid:"+productid
	qty=arr_qty[i]
	#puts "Quantity:" +qty

	object=Product.new(productid,qty)
	puts object.generate_bill
	i=i+1
end