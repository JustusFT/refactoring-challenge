# extract_variable.rb
#https://refactoring.com/catalog/extractVariable.html

username = "Alice"
username_validation = (username.length > 3 && username.length <= 7 )
start_with_vowel = (/\A[aeiou]/i.match(username))

puts start_with_vowel

if ( username_validation || start_with_vowel )
	puts "Congratulations #{username}! You won 1 million dollars!"
else
	puts "Please try again!"
end
