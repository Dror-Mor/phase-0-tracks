store = {
	mens: {
		featured_season: 'Summer',
		racks: {
			hanging: 2,
			shelves: 5
		},
		sellers: [
			"Michelle", 
			"Omar"
			],
		items_on_sale: ["Hats"]
	},
	womens: {
		featured_season: 'Spring',
		racks: {
			hanging: 7,
			shelves: 10
		},
		sellers: [
			"Lea",
			"Maggie",
			"Rachel",
			"Steven"
			],
		items_on_sale: ["Golden belt", "Red dress" ]
	},
	kids: {
		featured_season: 'Spring',
		racks: {
			hanging: 3,
			shelves: 3
		},
		sellers: ["Mariah"],
		items_on_sale: []
	}
}

# How many shelves are there in the womens department?
puts "\nThere are #{store[:womens][:racks][:shelves]} shelves at the womens department."

# Who is working at the mens department?
puts "\nHere is a list for emloyees at the mens department:"
store[:mens][:sellers].each do |names|
	puts names
end