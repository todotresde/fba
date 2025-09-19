let cant = 10;
let tam;
let posX = 0;
let dir = 1;
let estados = [];
let colores = [];
let posXPelotita = 200;
let posYPelotita = 300;
let dirPelotitaX = 1;
let dirPelotitaY = 1;
let velPelotita = 1;

function setup() {
  createCanvas(800, 400);
  tam = (width /cant);
  for(let i=0; i<cant; i++){
    estados[i] = true;
    colores[i] = color(255, 0, 0);
  }
}


function draw() {
  background(255);
  dibujarBloques();
  dibujarPelotita();
  detectarColisiones();
}
