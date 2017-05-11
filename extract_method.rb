#extract_method.rb
#use this as tips for the first one : http://refactoring.com/catalog/extractMethod.html

def win?(username, dollars, letters)
	valid_length = ( username.length > 3 && username.length <= 10 )
	starts_with_test = username.downcase.start_with?(*letters)

	if ( valid_length || starts_with_test )
		puts "Congratulations #{username}! You won #{dollars} dollars!"
	else
		puts "Thanks for joining!"
	end
end

win?("Alice", 10 , ["a", "e", "i", "o", "u"])
win?("Bobby", 50 , ["b", "g", "l", "p"     ])
win?("Xena" , 100, ["q", "u", "x", "y", "z"])
