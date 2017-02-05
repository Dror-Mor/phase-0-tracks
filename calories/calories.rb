require 'sqlite3'

db = SQLite3::Database.new("daily_cal.db")
db.results_as_hash = true

continue = true
$table_exists = false

# allow user to add an item to the list.
def add_item(db)
	create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS items (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		calories INT
	)
	SQL
	db.execute(create_table_cmd)

	$table_exists = true

	puts "Please enter item name:"
	item_name = gets.chomp
	puts "Please enter calories for #{item_name}:"
	cals = gets.chomp.to_i
	db.execute("INSERT INTO items (name, calories) VALUES (? ,?)", [item_name, cals])
	puts "Item added successfully!"
end

# allow user to see all the items in the list and the sum of calories consumed. 
def summary(db)
	if $table_exists
		all_items = db.execute("SELECT * FROM items")
		total = 0
		all_items.each do |item|
			puts "\n#{item['id']}) #{item['name']} - #{item['calories']} calories"
			total += item['calories']
		end
		puts "You have consumed a total of #{total} calories so far"
	else
		puts "There are no items in your table."
	end
end

# allow user to delete table.
def drop(db)
	if $table_exists
		db.execute("DROP TABLE items;")
		$table_exists = false
		puts "\nTable successfully deleted."
	else
		puts "\nTable successfully deleted."
	end
end

"Hello, and welcome to Calorie Counter!"

while continue == true
	puts "\nWhat would you like to do next? Please enter the number of wanted option:
	1. Add item
	2. See summary
	3. Delete table
	4. Exit"

	user_choice = gets.chomp

	case user_choice
		when "1"
			add_item(db)

		when "2"
			summary(db)

		when "3"
			drop(db)
# allow user to exit.
		when "4"
			puts "Thank you. See you soon!"
			continue = false
	end
end



