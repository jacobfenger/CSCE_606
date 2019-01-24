#############################################################
# CSCE 606 Spring 2019 Homework #1: Ruby Intro
# Jacob Fenger
# Jacobfenger@tamu.edu
#############################################################

####################### PART 1 ##############################

# The inject function on array is an easy way to combine all
# elements of an array with a specific binary operation.
#
# In this case, we are using the + operator. 0 must be passed
# as the first argument in order for the total to start at 0.
def sum arr
	arr.inject(0, :+)
end

# This is a simple and easy way to implement this function.
# We are simply checking on the specific lengths and then
# setting total to the appropriate sum.
#
# If there are more than 1 elements in the array, we can 
# sort the array and then just add up the last two elements.
def max_2_sum arr
	if arr.length == 0
		total = 0
	elsif arr.length == 1
		total = arr[0]
	else
		sorted_arr = arr.sort
		total = sorted_arr[-1] + sorted_arr[-2]
	end
	total
end

# For the solution to this function, I implement a pretty
# brute force solution by iterating through every pair 
# in order to determine if two values sum to n.s
def sum_to_n? arr, n
	if arr.length == 0
		false
	elsif arr.length == 1
		false
	else
		sorted_arr = arr.sort # Sort the array
		i = 0
		while i < arr.length
			j = i + 1
			while j < arr.length
				# Check if two values equate to n
				if arr[i] + arr[j] == n
					return true 
				end
				j += 1
			end 
			i += 1
		end
		false
	end
end

############################## Part 2 ##########################

def hello(name)
	"Hello, " + name # Simple concatenation
end

def starts_with_consonant? s
	# If it's a letter it's either a consonant or a vowel
	if s.match(/\A[a-zA-Z]/) 
		if s.match(/\A[^aeiouAEIOU]/) # Check for no vowels
			return true 
		end
		return false
	elsif s.length == 0
		return false
	else 
		return false
	end
	false
end

# A multiple of 4 in binary is any number that ends with 00 due 
# to it being base 2.
#
# We can simply check if the string only contains 1s and 0s and 
# ends with two 0s.
def binary_multiple_of_4? s

	# Check if a string does not have a 0 or 1
	if s.match(/^[01]*[00]$/) # 00 must be at the end
		return true
	elsif s.match(/^0+$/) # If a string is only 0s, return true
		return true
	end
	false
end

# Part 3

class BookInStock
	def initialize(isbn, price)
		if isbn.length == 0
			raise ArgumentError
		end

		if price <= 0
			raise ArgumentError
		end

		@isbn = isbn
		@price = price
	end

	# Define class var ISBN
	def isbn
		@isbn
	end

	# Define setter for isbn
	def isbn=(isbn)
		@isbn = isbn
	end

	# Define class var for price
	def price
		@price
	end

	# Setter for price
	def price=(price)
		@price = price
	end

	def price_as_string()
		# Split the price into dollars and cents strings
		split_price = @price.to_s.split('.')
		dollars = split_price[0]
		cents = split_price[1]

		# If cents is nil, that means there is no cents defined.
		# We can convert the cents string into 2 zeros
		if cents == nil
			cents = "00"
		# If cents is length 1, that mean we can just append a 0
		elsif cents.length == 1 
			cents = cents + "0"
		end

		# Construct the price_as_string var with the appended dollar sign
		# and the newly formatted cents string
		price_as_string = "$" + dollars + "." + cents
	end
end
