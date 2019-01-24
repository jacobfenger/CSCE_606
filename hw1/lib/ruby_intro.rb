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
	if s.match(/\A[^aeiouAEIOU]/)
		return true 
	elsif s.length == 0
		return true
	else 
		return false
	end
	false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
