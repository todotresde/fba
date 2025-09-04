let miImagen;
let miTexto = "Hola Mundo";

function preload() {
  miImagen = loadImage("data/gumball.webp");
}

function setup() {
  createCanvas(400,400);
}


function draw() {
  background(200);
  ellipse(mouseX, mouseY, 40, 40);
  text(miTexto, 200, 200);
  image(miImagen, 0, 0);
}
