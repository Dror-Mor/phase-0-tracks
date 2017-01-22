class Dancer 
	attr_accessor :age
	attr_reader :queue

	def initialize(str_name, age)
		@name = str_name
		@age = age
		@dance_style = ""
		@queue = []
	end

	def name
		@name
	end

	def age
		@age
	end

	def pirouette
		p "*twirls*"
	end

	def bow
		p "*bows*"
	end

	def card
		p queue
	end

	def queue_dance_with(dancer_name)
		@queue << dancer_name
		card
	end

	def begin_next_dance
		next_to_dance = @queue[0]
		@queue.delete_at(0)
		p "Now dancing with #{next_to_dance}."
	end

	def dance_style(str) #Adds or changes a dancers dance style
		@dance_style = str
		p @dance_style
	end
end

dancer = Dancer.new("Misty Copeland", 33)
dancer.name
dancer.age = 34

