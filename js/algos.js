// function taks an array of strings
// function measures the length of each string
// function prints longest string

function longest(array) {
  var longest = 0;
  var longestPhrase = '';
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > longest) {
      longest = array[i].length;
      longestPhrase = array[i];
    }
  }
  return longestPhrase
}

// function takes a pair of hashes
// function compares keys, key-value pairs and returns true if either is the same

function compare(x, y) {
  for (var key in x) {
    if (x.hasOwnProperty(key) && x[key] == y[key]) {
      return true;
    }
  } 
  return false;
}

// function takes an integer for length
// generate an array of that length
// array consists of random words of random length between 1-10

function generator(integer) {
  var array = []
  var alphabet = "abcdefghijklmnopqrstuvwxyz".split('')

 for (var i = 0; i < integer; i++) {
  var word = "";
  var randomNum = Math.floor(Math.random() * 10) + 1;
  
  for (var n = 0; n < randomNum; n++) {
    word += alphabet[Math.floor(Math.random() * alphabet.length)];
  }

  array.push(word)

 }

return array

}


var array1 = ["long phrase","longest phrase","longer phrase"]
var array2 = ["one word", "two words", "three words"]
var array3 = ["red", "orange", "yellow", "green", "blue", "indigo", "violet", "ultraviolet"]

//var test1 = longest(array1)
//console.log(test1)

//var test2 = longest(array2)
//console.log(test2)

//var test3 = longest(array3)
//console.log(test3)

//var test4 = compare({name: "Steven", age: 25}, {name: "Tamir", age: 25})
//console.log(test4)

//var test5 = compare({name: "Steven", age: 14}, {name: "Tamir", age: 25})
//console.log(test5)

//var test6 = compare({name: "Tamir", age: 25}, {name: "Tamir", age: 25})
//console.log(test6)

//var test7 = generator(3)
//console.log(test7)

for (var i = 0; i < 10; i++) {
  var array = generator(3);
  console.log(array)
  var test8 = longest(array)
  console.log(test8)

}
