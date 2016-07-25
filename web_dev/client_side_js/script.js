console.log("Hello World!");

var photo = document.getElementById("pizza");

photo.style.border = "2px solid red";

function pizzaFade(event) {
  event.target.style.opacity = "0.5";
}

pizza.addEventListener("click", pizzaFade);
