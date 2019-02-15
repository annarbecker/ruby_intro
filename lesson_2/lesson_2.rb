# Lesson 2
# Write a single chain of commands to find all numbers that
# * are from an array of numbers 1..10000 inclusive
# * are divisible by 3 (element %3 == 0)
# * are not less than 5000
# * sorted in reverse order
class LessonTwo

	def array_manipulation
		arr = (1...10000).to_a
		  .select{|element| element % 3 == 0}
		  .reject{|element| element < 5000}
		  .sort!
		  .reverse!
	end
end