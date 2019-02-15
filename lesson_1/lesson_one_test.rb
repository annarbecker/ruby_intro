require 'minitest/autorun'
require_relative 'lesson_one'

class TestCaseStatement < Minitest::Test

	def setup
		@test_lessonOne = LessonOne.new
	end

	def test_case_statement
		assert_output (/I guess nothing matched... But why?/) { @test_lessonOne.case_statement }
	end

	def test_replace_if_elsif
		file = File.open('lesson_one.rb', 'r').read

		# assert file doesn't contain if, elsif
		assert_equal file.include?("if"), false
		assert_equal file.include?("elsif"), false

		# replace if and elsif with case, keep final else
		assert_equal file.include?("else"), true
		assert_equal file.include?("case"), true
	end
end