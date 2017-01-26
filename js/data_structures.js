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

var car = {brand: 'Chevy', 'year': 2016, IsFast:true};	

function Car(name, year,IsFast) {
	this.name = name;
	this.year = year;
	this.IsFast = IsFast;
	this.fast = function(){console.log("VOOOOOOOMMM!");};
	console.log("New car initialization is complete");
}


console.log(car);

var newCar = new Car("BMW", 2017, false);

console.log(newCar);

newCar.fast()