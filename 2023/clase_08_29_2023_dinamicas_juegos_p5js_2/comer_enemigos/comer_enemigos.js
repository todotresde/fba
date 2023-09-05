let cantEnemigos = 10;
let enemigosPosX = [];
let enemigosPosY = [];
let enemigosVida = [];

let posX = 200;
let posY = 200;

let contador = 0;

function setup() {
  createCanvas(400, 400);
  
  for(let i=0; i<cantEnemigos; i++){
    enemigosPosX.push(random(50, width-50));
    enemigosPosY.push(random(50, height-50));
    enemigosVida.push(1);
  }
}


function draw() {
  background(200);
  for(let i=0; i<cantEnemigos; i++){
    dibujarEnemigo(i);
  }
  dibujarPersonaje();
  dibujarContador();
}
