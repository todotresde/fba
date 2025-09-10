let imagenesDeMiPersonaje = [];
let cant = 6;

function preload(){
  for(let i=1; i<=cant; i++){
    imagenesDeMiPersonaje[i-1] = loadImage("data/p" + i + ".png");
  }
}
function setup() {
  createCanvas(400,400);
}


function draw() {
  background(255);
}
