var colors = ["mauve", "aubergine", "maroon", "peach"];
var names = ["Rainicorn","Pinky Puff","Sparkles","Bucephalus"];

colors.push("turquoise");
names.push("Gibbs");

//Testing out objects
var stable = {};
for (var i = 0; i < colors.length; i++){
  stable[names[i]] = colors[i];
}

//Car constructor function
function Car(model,color) {
  console.log("A new car, rolling off the assembly line...");

  this.model = model;
  this.color = color;

  this.honk = function(){
    console.log("BLAAAAAAARP BLAAAARP");
  }

}

// DRIVER CODE
console.log(colors);
console.log(names);
console.log(stable);

  //Testing out constructor function
  var jetson = new Car("flying", "purple");
  jetson.honk();
  console.log(jetson.color);

  var flinstones = new Car("rock-powered", "orange");
  console.log(flinstones.model);
