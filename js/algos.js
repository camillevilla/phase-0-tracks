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

//Release 2: function should
  // - generate an array of given integer length
  // - words will be randomly generated strings, 1 to 10 characters long
function generateWords(int){

  var testData = [];
  var characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

  //Loop: add words to array until it is as long as int
  for (var word_counter = 0; word_counter <= int - 1; word_counter++)
  {
    var currentWord = '';

    //randomly select word length from 1 to 10
    var currentLength = Math.floor(Math.random()*11) + 1;

      //Loop: add random letters to the current string
      for (var letter_counter = 0; letter_counter < currentLength; letter_counter++){

        // generate random letter and add to word
        currentWord += characters[Math.floor(Math.random()*52)];
      }
    // add generated word to array
    testData.push(currentWord);
  }
  return testData;
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

//test generateWords
console.log(generateWords(3));
console.log(generateWords(8));

//Release 2 test
  console.log("Release 2 test:");
  //Run test 10 times
  for (var test_counter = 0; test_counter < 10; test_counter++){
      //generate array
      var test = generateWords(5);
      console.log(test);
      //search for longest word
      console.log(longestPhrase(test));
    }
