//Notes
//- hide elements responding to click events
//- figure out how to bundle two actions into one click event (e.g. clicking "pepperoni" affects the button AND adds pepperoni to the receipt table)
//- learn how to make things return to their previous state after being clicked
//-how to traverse the DOM: clicking on a header affects CSS properties of child ul tags


// hide or show sub-ul if the h3 is clicked. does it need a child tag?

var crust = document.getElementById("crust");
console.log(crust.innerHTML);

// hide lists by default
$("ul").addClass("hidden");

$("#receipt").append(crust.innerText);

$("h3").on('click',function(){
  //remove state un-selected elements
  $(".selected").next().addClass("hidden");
  $(".selected").removeClass("selected");

  //add state to selected elements
  $(this).next().toggleClass("hidden");
  $(this).toggleClass("selected");

});

// click event handler for list items
  //something to take text selected and add it to table  //$(this).innerText)
