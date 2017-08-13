//For each letter in the string assign start at the last character and return as first character in new string. Do this until every character has been placed in reverse order. Then return new string.


var str = "hello";
var strLength = str.length
var array = []

for (var i = 1; i < str.length + 1; i++){
    var letter = str.slice(-i, strLength - (i - 1))
    array.push(letter)
    var reverse = array.join("");
}

if (reverse.length == str.length) {
    console.log(reverse)}
