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

//Release 2
//Create a method that takes an number and produces as many strings.
//the number will tell it how many times to itterate. 
//within this iteration will be another one that will add chars to everyword
function longest_item(arr) {
	max_length = 0;
	max_index = 0;

	for (var i = 0; i < arr.length; i++) {
		if (arr[i].length > max_length){
			max_length = arr[i].length;
			max_index = i;
		}
	}
	console.log("The longest item is: "+ "'"+arr[max_index]+"'");
	return max_index;
}

function same_value(object_a, object_b){
	if (object_a.name == object_b.name || object_a.age == object_b.age){
		console.log("True")
		return true;}
	else{
		console.log("False")
		return false;
	}
}

function array_generator(int){
	var arr = [];
	var alphabet = "abcdefghijklmnopqrstuvwxyz"
	for (var i = 0; i < int; i++) {
		var word = "" 
		for (var j = 0; j < Math.floor(Math.random() * 11)+1; j++) {
			word += alphabet[Math.floor(Math.random() * alphabet.length)];
		}	
		arr.push(word)
	}
	return arr;
}

var items = ["this is long", "i think this is the longest one", "this is also long"];
longest_item(items);

var items = ["Apple", "Ring", "Dresser", "Computers", "Rope"];
longest_item(items);


var items = ["JavaScript", "Ruby", "C++", "C#", "Python"];
longest_item(items);


var a = {name: "Ron", age: 27};
var b = {name: "Thomas", age: 27};
var c = {name: "Ellie", age: 34};
var d = {name: "Ellie", age: 36};

same_value(a,b)
same_value(c,d)
same_value(a,d)

arr = array_generator(10)
console.log(arr)
longest_item(arr)