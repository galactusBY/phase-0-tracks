var color = ["Green", "Fuschia", "Burnt Ombre", "Orange"];
var horse = ["Babe", "Black Beauty", "Seabiscuit", "Trigger"];
horse.push("ManoWar");
color.push("Rainbow");

var my_little_ponies = {};

for (var i = 0; i < color.length; i++) {
    // console.log(color[i]);
    // console.log(horse[i]);
    my_little_ponies[horse[i]] = color[i];

}

console.log(my_little_ponies);

for (var key in my_little_ponies) {
    console.log(key);
    console.log(my_little_ponies[key]);
}

function Car(make, model, color){
    console.log(this);
    this.make = make;
    this.model = model;
    this.color = color;
    this.honk = function () { console.log("BEEP!"); };
}

var kit = new Car("Thunderbird", "Pontiac", "Black");
console.log(kit);
kit.honk();

var herbie = new Car("Bug", "VW", "White");
console.log(herbie);
herbie.honk();