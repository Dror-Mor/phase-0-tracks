// create a var that will hold the longest length so far and set it to 0
// create a var that wil hold the largest index so far and set it to 0
// iterate through the items in the array and check to see if they're longer than the max length
// 		-if it is - update max_length, update max_index
// return the item in the max_index

function longest_item(arr) {
	max_length = 0;
	max_index = 0;

	for (var i = 0; i < arr.length; i++) {
		if (arr[i].length > max_length){
			max_length = arr[i].length;
			max_index = i;
		}
	}
	return max_index;
}

var items = ["this is long", "i think this is the longest one", "this is also long"];
max_index = longest_item(items);
console.log("The longest item is: "+ "'"+items[max_index]+"'");

var items = ["Apple", "Ring", "Dresser", "Computers", "Rope"];
max_index = longest_item(items);
console.log("The longest item is: "+ "'"+items[max_index]+"'");

var items = ["JavaScript", "Ruby", "C++", "C#", "Python"];
max_index = longest_item(items);
console.log("The longest item is: "+ "'"+items[max_index]+"'");