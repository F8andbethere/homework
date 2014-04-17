=======================
FIRST EXERCISE
=======================

// Your code here.
// (Click code listings to edit them.)
octothorpe = ""

for(var i = 1; i <= 7; i++){
  octothorpe += "#"
  console.log(octothorpe)
};


=======================
SECOND EXERCISE
=======================

// Your code here.

var min = 1
var max = 100

var fizz = "Fizz"
var buzz = "Buzz"

for( ; min <= max; min++){
  if (min % 15 == 0) 
      console.log(fizz + buzz);
    else if (min % 3 == 0)
        console.log(fizz);
    else if (min % 5 == 0)
      console.log(buzz);
    else
        console.log(min);      
}


VARIATION

var min = 1
var max = 100

var fizz = "Fizz"
var buzz = "Buzz"

for( ; min <= max; min++){
  fizzbuzz = ""
    if (min % 3 == 0) fizzbuzz += fizz
    if (min % 5 == 0) fizzbuzz += buzz
        
    if (fizzbuzz == "") 
        console.log(min);
    else
      console.log(fizzbuzz);      
}

=======================
THIRD EXERCISE
=======================

// Your code here.

var size = 8
var black = "#"
var white = "@"

for (var grid = 0; size > grid; grid++) {
  var row = ""
  var i = 1
  
  for (var i = 0; i < size; i++) {
    if (i % 2 == 0) row += black;
    if (i % 2 != 0) row += white;
  }
  
  console.log(row);
}

=======================
FINAL JS  EXERCISE
=======================

var add1 = function (x) {
    return x + 1;
};

var negate = function(func) {
    return function(x){
        return func(x) * -1
    };
};

// Should return -6
// Because (5+1) * -1 = -6
console.log("Not cool bro");
console.log(negate(add1)(5));

=======================
LEARNEROO JS  EXERCISE
=======================

function doStuff(a, b){
  if (a % 2 == 0) { return Math.pow(a, b) };
  if (a % 2 != 0) { return a / b };
}

//boilerplate code
var n = parseInt(readline());
for(var i=0; i<n; i++){
  var ar = readline().split(" ");
  print(doStuff(parseInt(ar[0]), parseInt(ar[1])));
}



=======================
JSFIDDLE MINIPROGRAMS #1
=======================

do {
    user_answer = prompt("Yo, favorite food?", "");
    if (user_answer) { output(user_answer) };
}
while (!user_answer);

=======================
JSFIDDLE MINIPROGRAMS #2
=======================
user_answer = prompt("Quick! What's 2 + 2, hotshot?", "Uhh...");

switch(user_answer){
    case "4":
        alert("Sweet. Tubular.")
        break;
    case "3": case "5":
        alert("So God-damned close!")
        break;
    default:
        alert("...")
}

=======================
JSFIDDLE MINIPROGRAMS #3
=======================

var start = 100;
var finish = 1;
var labs = " Labs";
var lighthouse = "Lighthouse";

for ( ; start >= finish; start--) {
    lighthouse_labs = "";
    
    if (start % 3 == 0) {lighthouse_labs += lighthouse};
    if (start % 5 == 0) {lighthouse_labs += labs};
    
    if (lighthouse_labs == "") { output(start) };
    if (lighthouse_labs != "") { output(lighthouse_labs) };
}

OR

for (i = 100; i > 0; i--) {
    if (i % 3 == 0 && i % 5 == 0) { output("Lighthouse Labs") }
    else if (i % 3 == 0) { output("Labs") }
    else if (i % 5 == 0) { output("Lighthosue") }
    else { output(i) };
}

OR

for (i = 100; i > 0; i--) {
    if (i % 15 == 0) { output("Lighthouse Labs") }
    else if (i % 3 == 0) { output("Labs") }
    else if (i % 5 == 0) { output("Lighthosue") }
    else { output(i) };
}

OR

var lighthouse_labs_array = [];

for (i = 1; i < 100; i++) {
    if (i % 15 == 0) { lighthouse_labs_array.push("Lighthouse Labs") }
    else if (i % 3 == 0) { lighthouse_labs_array.push("Labs") }
    else if (i % 5 == 0) { lighthouse_labs_array.push("Lighthosue") }
    else { lighthouse_labs_array.push(i) };
}

ll_reversed = lighthouse_labs_array.reverse();
output(ll_reversed);

=======================
JSFIDDLE MINIPROGRAMS #3
=======================

// create a car constructor function
var carFactory = function(){
  this.color = "";
  this.number = 0;
}
// create a carGarage array
var carGarage = [];

// create a loop that creates cars and places them in carGarage
for (i=0; i < 10; i++) {
  
  newCar = new carFactory();
  if (i <= 4) { newCar.color = "green" }
  else { newCar.color = "blue" }
  newCar.number = i;
  
  carGarage.push(newCar);
}


l1ghh0us3l@b3!