//Notes
//- hide elements responding to click events
//- figure out how to bundle two actions into one click event (e.g. clicking "pepperoni" affects the button AND adds pepperoni to the receipt table)
//- learn how to make things return to their previous state after being clicked
//-how to traverse the DOM: clicking on a header affects CSS properties of child ul tags

// hide lists by default
$("ul").addClass("hidden");
$("h4").addClass("hidden");

$("h3").on('click',function(){
  //remove state un-selected elements
  $(".selected").next("ul").addClass("hidden");
  $(".selected").removeClass("selected");


  $(this).next().toggleClass("hidden");

  //add state to selected elements
  $(this).toggleClass("selected");

});

// click event handler for list items
  //something to take text selected and add it to table  //$(this).innerText)
var x ='';
$("li").on('click',function(){
  $(this).toggleClass("selected");
  x = $(this).text();
    //need to use a .each to check if ANY tr matches the de-selected text
    if (check_receipt(x) == true)
     $("#receipt").find("tr").last().remove("tr");
  else
   $("table").append("<tr><td>"+ x + "</td></tr>");
});

//testing out .each
//DO NOT CHANGE - this prints out <li></li>
$.each($("li"), function(index,value){console.log(value);});

//DO NOT CHANGE - access contents of li, prints out topping string
$.each($("li"), function(index,value){console.log($(value).text());});

//challenge: iterate through each item in the receipt table
$.each($("#receipt").find("td"), function(index,value){console.log($(value).text());});

//returns true if any receipt values matches given string
function check_receipt(x){
  search = $("#receipt").find("td");
  stop = search.length
  var current_text = '';
  for (var i = 0; i < stop; i++){
    current_text = $(search[i]).text();
    if (current_text == x){
      return true;
    }
  }
  return false;
};

//Refactor to two functions
  //find match
  //return matching receipt row

console.log(check_receipt("wee"));
console.log(check_receipt("wah"));

// DO NOT CHANGE - example of removing nth child <-- eventually plug in index from find_row
$("#crust li:nth-child(2)").remove();
($("#crust").children()).indexOf("Stuffed");
