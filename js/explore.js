// declare a string variable
// create a method to reverse the string
// create an output variable that is a blank string
// set i variable equal to the string length - 1
// initialize a counter, set its while condition. i.e., while i is greater than or equal to 0, count down from it
// add the character for each i to the output string

var str = "hello";

function reverse(str) {
  var output = '';
  for (var i = str.length - 1; i >= 0; i--)
    output += str[i];
  return output;
}

var backwards = reverse(str);
backwards

if (1 == 1) {
  console.log(backwards);
}