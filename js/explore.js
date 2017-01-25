// create a function that gets a string and reveses it
// - create a new empty string
// - create a loop that will statr from the last char of the given str and stop at 0.
// - insert each char into the new string.
// - return new str

function reverse(str){
	var new_str = "";
	for (var i = str.length - 1; i >= 0; i--){
		new_str += str[i];
	}
	return new_str;
}

str = reverse("Hello");
if (1==1){
	console.log(str);
}