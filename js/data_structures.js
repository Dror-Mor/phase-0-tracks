var colors = ["Red", "Black", "Grey", "White"];
var names = ["James", "Bill", "Rick", "Bobby"]; 

colors.push("Pink");
names.push("Cooper");

console.log(colors);
console.log(names);

var horses = {};

for (var i = 0; i < names.length ; i++){
	horses[names[i]] = colors[i];
} 

console.log(horses)