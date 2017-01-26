// Relese 0
// create a var that will hold the longest length so far and set it to 0
// create a var that wil hold the largest index so far and set it to 0
// iterate through the items in the array and check to see if they're longer than the max length
// 		-if it is - update max_length, update max_index
// return the item in the max_index

//Relese 1
// Create a method that gets 2 objecte
// Create a condition to check if one of object key-values is like the other
// if so - return true, if not, return false.

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

function same_value(object_a, object_b){
	if (object_a.name == object_b.name || object_a.age == object_b.age){
		return true;}
	else{
		return false;
	}
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

var a = {name: "Ron", age: 27};
var b = {name: "Thomas", age: 27};
var c = {name: "Ellie", age: 34};
var d = {name: "Ellie", age: 36};

console.log(same_value(a,b))
console.log(same_value(c,d))
console.log(same_value(a,d))
