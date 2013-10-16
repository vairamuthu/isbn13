class Isbn

    def self.check_isbn
	puts "Enter the digits"
	isbn_in = gets().delete("\n")
	isbn_arr = isbn_in.split(//).collect{|x| x.to_i}
		
	if isbn_arr.length == 12
		puts "Answer is "+isbn_in+print_isbn(isbn_arr) 
	else
		puts "Please enter exact digits, Thanks"
	end
   end
   def self.print_isbn(isbn_arr)
	sum = 0
	6.times do
		sum += isbn_arr.shift	
		sum += isbn_arr.shift * 3 
   	end
	result = 10- (sum % 10)
	result = 0 if result == 10 
	return result.to_s

   end

end


Isbn.check_isbn

