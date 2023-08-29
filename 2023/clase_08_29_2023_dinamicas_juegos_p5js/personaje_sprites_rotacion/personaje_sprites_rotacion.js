const DERECHA = "DERECHA";
const IZQUIERDA = "IZQUIERDA";

let cantImagenes = 4;
let imagenesMarioDer = [];
let imagenesMarioIzq = [];
let posX = 50;
let posY = 100;
let spriteActualMario = 0;
let direccion = DERECHA;

function preload() {
  for(let i=0; i<cantImagenes; i++){
    imagenesMarioDer[i] = loadImage('data/mario' + (i+1) + '.png');
    imagenesMarioIzq[i] = loadImage('data/mario' + (i+1) + '_izq.png');
  }
}

function setup() {
  createCanvas(400, 400);
}


function draw() {
  background(200);

  dibujarPersonaje();
  presionarTecla();
}


function presionarTecla() {
  if (keyIsPressed) {
    if (keyCode == RIGHT_ARROW) {
      direccion = DERECHA;
      posX+=2;
      calcularSiguienteSpriteDeMario();
    } else if (keyCode == LEFT_ARROW) {
      direccion = IZQUIERDA;
      posX-=2;
      calcularSiguienteSpriteDeMario();
    }
  }
}
