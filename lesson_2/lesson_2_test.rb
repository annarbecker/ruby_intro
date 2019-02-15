require 'minitest/autorun'
require_relative 'lesson_2'

class TestLessonTwo < Minitest::Test
	def setup
		@test_lessonTwo = LessonTwo.new
	end

	def test_array_manipulation
		output = @test_lessonTwo.array_manipulation

		output.each do |element|
			# assert that each element in the array is greater than 5000
			assert_operator element, :>, 5000
			# assert that each element in the array is divisible by 3
			assert_equal element % 3, 0
		end
	end
end
