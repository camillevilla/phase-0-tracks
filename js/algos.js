// Release 0: a function that returns the longest string in an array
function longestPhrase(phrases){
  // initialize placeholder for longest word
  var longest = '';
  // loop through each phrase in the array
  for (i = 0; i < phrases.length; i++){
    // read length of word
    var currentPhrase = phrases[i];
    // if length >
    if (currentPhrase.length > longest.length){
      longest = currentPhrase;
    }
  }
  //return longest phrase
  return longest;
}

// Release 1: a funciton that takes two objects and checks to see if the objects share at least one key-value pair.
function sharedKey(obj1, obj2) {
  var obj1keys = [];
  var obj2keys = [];
  // iterate through obj1 keys
  for (var key1 in obj1) {
    // iterate through obj2 keys
    for (var key2 in obj2 ){
      // if obj2 key matches obj1 key, return true and exit iteration
      if (key2 == key1){
        console.log("Matching key found!");
        return true;
      }
    }
  }
  //return false if no matches result from iteration
  console.log("No matching keys found.");
  return false;
}

//DRIVER CODE
console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]));
console.log(longestPhrase(["a","bee","catdog"]));

//testing out sharedKey
var book = {name: "Little Women", author: "Alcott"};
var magazine = {author:"Smith", issue: 7};
console.log(sharedKey(book, magazine));

var apple = {seeds: 5, stem: true};
var orange = {peel: true, slices: 8};
console.log(sharedKey(apple,orange));
