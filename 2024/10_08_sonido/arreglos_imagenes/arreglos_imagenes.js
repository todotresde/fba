let cantImgs = 10;
let misImagenes = [];

function preload() {
  for(int=0;i<cant;i++){
    misImagenes[i] = loadImage("data/img"+i+".jpg");
  }
}

function setup() {
  createCanvas(600, 400);
  textSize(40);
}


function draw() {
  background(200);
  image(misImagenes[0], 0, 0);
}

function mousePressed() {
}
