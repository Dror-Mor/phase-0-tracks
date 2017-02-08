var list = document.getElementById("list");

list.style.border = "2px solid red";

var button = document.getElementById("button");

function deleteBorder(event){
	list.style.border = "";
}

button.addEventListener("click", deleteBorder);