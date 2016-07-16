// Release 0: a function that returns the longest string in an array

var longestPhrase = function(phrases){
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

//DRIVER CODE
console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]));
console.log(longestPhrase(["a","bee","catdog"]));
