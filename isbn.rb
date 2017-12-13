
puts "Please enter an ISBN number: \n \n"
user_input = gets.chomp 


number_array = user_input.split(' ') {|s| s.to_i}
number_array.count
digit_check = user_input

if user_input.length == 10 
		puts "10 \n"
		return isbn_ten
	elsif user_input.length == 13
		puts "13 \n"
		#return digit_check13(user_input)
	else
		puts "Number is invalid. ISBN not found."
	end

ten = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

p ten.map { |ten| ten ** number_array}


## Just junk from here on down ##
# puts user_input
# puts number_array
 #puts user_input.length

 #def digit_check(user_input)
 	#puts user_input.length
	

