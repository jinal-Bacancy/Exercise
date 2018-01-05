class Converter
   
   def initialize(t1,t2)
      @ctempf,@ftempc = t1,t2
   end

   # accessor methods
   def printcTempf
      @ctempf
   end

   def printfTempc
      @ftempc
   end

   def celcious_to_fahrenhit
   	puts "Temperature in celcious : #{@ctempf}"
   	fahrenhit= @ctempf * 9/5 + 32
   	puts "fahrenhit = #{@ctempf} * 9/5 + 32 =" +fahrenhit.to_s
   end

   def fahrenhit_to_celcious
   	puts "Temperature in fahrenhit : #{@ftempc}"
   	celcious=(@ftempc-32)*5/9
   	puts "fahrenhit = ( #{@ftempc} - 32 )*5/9=" +celcious.to_s
   end

end

con = Converter.new(10,50)
con.celcious_to_fahrenhit
con.fahrenhit_to_celcious