// Function that takes reverses a given string
// e.g. reverse("hello") => "olleh"
//take string
  //initialize new empty string
  //start a loop
    //read each character of the original string, beginning with the end
    //push character to new string
  //return string

function reverse(str){
  var new_str = "";
  for (var i = str.length - 1; i >= 0; i--){
    var current_letter = str[i];
    new_str += current_letter;
  }
  return new_str;
}
