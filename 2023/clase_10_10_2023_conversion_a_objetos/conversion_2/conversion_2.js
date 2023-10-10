let imagenFondo;
let imagenMedusa;
let imagenRed;
let juego;

function preload() {
  imagenFondo = loadImage("assets/fondo.png");
  imagenMedusa = loadImage("assets/medusa0.png");
  imagenRed = loadImage("assets/red.png");
}

function setup() {
  createCanvas(500, 500);
  juego = new Juego();
}


function draw() {
  juego.dibujar();
}

function mouseClicked() {
  juego.mousePresionado();
}
