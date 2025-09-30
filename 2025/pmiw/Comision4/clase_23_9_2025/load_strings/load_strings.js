let misTextos;
let i = 0;

function preload() {
  misTextos = loadStrings('/data/textos.txt');
}

function setup() {
  createCanvas(400,400);
}


function draw() {
  background(255);
  text(misTextos[i], mouseX, mouseY, 400, 400);
}

function mousePressed(){
  i++;
}
