class Dog
	def initialize(name)
		@name = name
	end

	def bark
		"Ruff ruff"
	end

	def Dog.about_me
		"I bright up people's life"
	end
end

my_dog = Dog.new("Vindictus")
my_dog.bark

puts Dog.about_me