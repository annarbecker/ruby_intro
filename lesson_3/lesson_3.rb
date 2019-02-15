class Person 
	attr_accessor :first_name, :last_name

	@@people = []

	def initialize(first_name, last_name)
		self.first_name = first_name
		self.last_name = last_name
		@@people << self
	end

	def to_s
		"#{@first_name} #{@last_name}"
	end

	def self.search(last_name)
		@@people.select { |person| person.last_name == last_name }
	end

end

