require 'sqlite3'

db = SQLite3::Database.new("daily_cal.db")
db.results_as_hash = true

continue = true

def add_item(db)
	create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS items (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		calories INT
	)
SQL

	db.execute(create_table_cmd)
	puts "Please enter item name:"
	item_name = gets.chomp
	puts "Please enter calories for #{item_name}:"
	cals = gets.chomp.to_int
	db.execute("INSERT INTO items (name, calories) VALUES (? ,?)", [item_name, cals])
	puts "Item added successfully!"
end

#add_item(db, "Bread", 200)


def summary(db)
	all_items = db.execute("SELECT * FROM items")
	total = 0
	all_items.each do |item|
		puts "#{item['id']}) #{item['name']} - #{item['calories']} calories"
		total += item['calories']
	end
	puts "You have consumed a total of #{total} calories so far"
end

"Hello, and welcome to Calorie Counter!"
#summary(db)
while continue = true
	puts "Please enter the number of wanted option:\n
	1. Add item\n
	2. See summary\n
	3. Delete table\n
	4. Exit\n"

	user_choice = gets.chomp

	case user_choice
		case "1"
			add_item(db)

		case "2"
			summary(db)
	end
end
# allow user to add an item to the list.
# allow user to see all the items in the list and the sum of calories consumed. 
# allow user to delete table.
# allow user to exit.