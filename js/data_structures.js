var colors = ["mauve", "aubergine", "maroon", "peach"];
var names = ["Rainicorn","Pinky Puff","Sparkles","Bucephalus"];

colors.push("turquoise");
names.push("Gibbs");

//Testing out objects
var stable = {};
for (var i = 0; i < colors.length; i++){
  stable[names[i]] = colors[i];
}

// DRIVER CODE
console.log(colors);
console.log(names);
console.log(stable);
