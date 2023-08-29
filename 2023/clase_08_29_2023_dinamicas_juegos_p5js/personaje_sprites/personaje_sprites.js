let cantImagenes = 4;
let imagenesMario = [];
let posX = 50;
let posY = 100;
let spriteActualMario = 0;

function preload() {
  for(let i=0; i<cantImagenes; i++){
    imagenesMario[i] = loadImage('data/mario' + (i+1) + '.png');
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
      posX+=2;
      calcularSiguienteSpriteDeMario();
    } else if (keyCode == LEFT_ARROW) {
      posX-=5;
    }
  }
}
