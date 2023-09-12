let myFont;

function preload() {
  myFont = loadFont('data/ArianaVioleta.ttf');
}

function setup() {
  createCanvas(800,400);
}

function draw(){
  background(200);
  fill('#ED225D');
  textFont(myFont);
  textSize(100);
  text('Hola Mundo 0000 3', 50, 100);
}
