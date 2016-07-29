//Notes
// - show already selected toppings when reopening category
// - fix Toppings toggle problems

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

  //highlight toppings that are already on pizza


});

// click event handler for list items
  //something to take text selected and add it to table  //$(this).innerText)
var x ='';
$("li").on('click',function(){
  $(this).toggleClass("selected");
  x = $(this).text();
    //need to use a .each to check if ANY tr matches the de-selected text
    if (check_receipt(x) == true)
     remove_receipt_row(receipt_row(x)) $("ul");

     //$(this).removeClass("on-receipt")
  else
   $("table").append("<tr><td>"+ x + "</td></tr>");
   //$(this).addClass("on-receipt");
});


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

//return matching receipt row
  function receipt_row(x){
    search = $("#receipt").find("td");
    stop = search.length
    var current_text = '';
    for (var i = 0; i < stop; i++){
      current_text = $(search[i]).text();
      if (current_text == x){
        return i;
      }
    }
    return false;
  };

function remove_receipt_row(int){
$("#receipt tr:nth-child("+ (int + 1) + ")").remove();
};
