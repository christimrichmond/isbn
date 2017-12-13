
puts "Please enter an ISBN number: \n \n"
user_input = gets.chomp

def isbn_check10(number_array)
	taken_array = number_array
	number = 10
	total = 0
	taken_array.each do |digits| 
	total = total + (digits * number)
	number = number - 1
	end

	if total % 11 == 0
		puts "This is a valid ten digit ISBN."
	else 
		puts "This is NOT a valid 10 digit ISBN."
	end

end

def isbn_check13(number_array)
	array13= [1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1]
	total = 0
	number = 0
	number_array.each do |digits13|
	total = total + (digits13 * array13[number])
	number = number + 1
	end

	if total %10 == 0
		puts "This is a valid 13 digit ISBN."
	else 
		puts "This is NOT a valid 13 digit ISBN."
	end
end

number_array = user_input.split("").map(&:to_i)

count = number_array.count

if count == 10 
	isbn_check10(number_array)
	elsif user_input.length == 13
	isbn_check13(number_array)
	else
		puts "Number is invalid. ISBN must be 10 or 13 digits."
	end





## Just junk from here on down ##

# ten = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

# p ten.map { |ten| ten ** number_array}

# puts user_input
# puts number_array
 #puts user_input.length

 #def digit_check(user_input)
 	#puts user_input.length
	
#puts count

#digit_check = user_input


#p number_array
#p number_array.class