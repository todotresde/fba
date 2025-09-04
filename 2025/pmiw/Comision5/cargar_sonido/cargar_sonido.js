let miSonido;
let miTexto = "Hola Mundo";

function preload() {
  soundFormats('mp3');
  miSonido = loadSound("data/glass-break.mp3");
}

function setup() {
  createCanvas(400,400);
}


function draw() {
  background(200);
  ellipse(mouseX, mouseY, 40, 40);
  text(miTexto, 200, 200);
}

function mousePressed(){
  miSonido.play();
}
