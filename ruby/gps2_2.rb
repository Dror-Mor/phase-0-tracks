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


list = create_list("carrots apples cereal pizza")
add_item(list, "pears", 4)