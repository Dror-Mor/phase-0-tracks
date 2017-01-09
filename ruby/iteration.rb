def block_method
	puts "my favorite flavor is"
	yield ("vanilla")
end

block_method{|flavor1| puts "#{flavor1}"}

fruits = ["pear", "apple", "orange", "banana" ]

golden_globes = {
	actress: "Meryl streep",
	actor: "Ben Afflack",
	film: "La La Land"
}

fruits.each do |fruit|
	puts "#{fruit}"
end

golden_globes.each do |category, winner|
	puts "category is best #{category}" ", and the winner is #{winner}"
end

fruits.map! do |fruit|
	"#{fruit}" + "s"
end

puts fruits

numbers = ["1", "2", "3", "4", "5", "6", "7"] #We could also enter inegers to begin with and .to_i wouldn't be needed

letters = {
	first: "a",
	second: "b",
	third: "c",
	fourth: "d"
}

puts "Original array:" 
puts numbers

numbers.delete_if {|number| number.to_i > 6}

puts "modified array:" 
puts numbers