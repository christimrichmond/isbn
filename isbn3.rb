#def valid_isbn
def user_input(isbn_in)
	puts "Please enter an ISBN number."
	user_input = gets.chomp

#def user_input(isbn_in)
	#puts isbn_in
end
	#isbn_in = gets.chomp.to_i
# 	number_array = isbn_in.split('')
#  	number_array.count
# end

def digit_check(isbn_in)
	if isbn_in.length == 10
		return digit_check10(isbn_in)
	elsif isbn_in.length == 13
		return digit_check13(isbn_in)
	else
		puts "Number is invalid. ISBN not found."
	end
end	

#def digit_check10(isbn_in)



# {
# 	int i, s = 0, t = 0;

# 	for (i = 0; i < 10; i++) {
# 		t += digits[i];
# 		s += t;
# 	}
# 	return s % 11;
# }











#puts valid_isbn











