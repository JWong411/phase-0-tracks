console.log("The script is running!");

function addBlackBorder(event) {
  event.target.style.border = "2px solid black"
}

function changeColorToRed(event) {
  event.target.style.color = "red";
}

var gif = document.getElementById("cat gif");
gif.addEventListener("click", addBlackBorder);

var button = document.getElementById("button");
button.addEventListener("dblclick", changeColorToRed)