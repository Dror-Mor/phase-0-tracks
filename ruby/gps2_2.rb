# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: hash: items with item name and quantity
				# split the sting into an array of items.
				# take every item if the array and put it into the hash
				# set the hash’s value to a default of 1 
				
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: look at the list and insert the value and quantity into the hash
# output: updated list with the new items

# Method to remove an item from the list
# input: list, item name
# steps: if the item is found on the list- remove it. else - if it’s not found - throw an error.
# output: updated list

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps: if item is on the list - update quantity. else - throw error
# output: updated list

# Method to print a list and make it look pretty
# input: list
# steps: each do for every item and its quantity
# output: print a list of the items and their quantities.

def create_list(grocery_list)
	grocery_arry = grocery_list.split(" ")
	grocery_hash = {}
	grocery_arry.each do |item|
		grocery_hash[item] = 1
end
	grocery_hash
end

def add_item(grocery_hash, item_name, quantity=1)
	grocery_hash[item_name] = quantity
	p grocery_hash
end

def remove_item(grocery_hash, item_name)
	grocery_hash.delete_if { |key, value| key == item_name }
	p grocery_hash
end

def update_quantity(grocery_hash, item_name, quantity)
	if grocery_hash.has_key? (item_name)
		grocery_hash[item_name] = quantity
	else
		puts "Item not found."
	end
	p grocery_hash
end

def print_list(grocery_hash)
	puts "\nHere is your grocery list:"
	grocery_hash.each do |item, quantity|
		puts "#{quantity} #{item}"
	end
end

list = create_list("carrots apples cereal pizza")
new_item = add_item(list, "pears", 4)
remove_item(new_item, "pears")
update_quantity(new_item, "apples", 10)
print_list(new_item)