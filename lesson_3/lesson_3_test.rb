require 'minitest/autorun'
require_relative 'lesson_3'

class TestLesson3 < Minitest::Test

	def test_search
		person1 = Person.new("Jane", "Doe")
		person2 = Person.new("Joe", "Doe")
		person3 = Person.new("John", "Smith")

		assert_equal Person.search("Doe").size(), 2
	end
end