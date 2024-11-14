let invasores_vidas = [];
let invasores_posX = [];
let invasores_posY = [];
let cantFilas = 5;
let cantColumnas = 10;
let tam;
let offsetX;
let offsetY;
let posXJugador;
let posYJugador;
let disparo = false;
let posXBala;
let posYBala;
let anchoJugador = 50;
let altoJugador = 20;
/*
invasores_vidas = [
  [1,1,1,1,1],
  [1,1,1,0,1],
  [1,1,1,0,1],
]
invasores_posX = [
  [200,250,300,350],
  [1,1,1,0,1],
  [1,1,1,0,1],
]
invasores_posY = [
  [100,100,100,100,100],
  [150,150,150,150,150],
  [200,1,1,0,1],
]
*/

function setup() {
  createCanvas(800,500);
  tam = (width/cantColumnas) * 0.5;
  offsetX = (width/cantColumnas) * 0.5;
  offsetY = (height/cantFilas) * 0.15;
  posXJugador = width/2;
  posYJugador = height - 50;
  posXBala = posXJugador + anchoJugador/2;
  posYBala = posYJugador + altoJugador/2;
  /*
    col=0, fila=0
    col=0, fila=1
    col=0, fila=2
    ...
    col=1, fila=0
    col=1, fila=1
    col=1, fila=2
    ...
  */
  for(let fila=0; fila<cantFilas; fila++){
    invasores_vidas[fila] = [];
    for(let col=0; col<cantColumnas; col++){
      invasores_vidas[fila][col] = 1;
    }
  }
}


function draw() {
  background(200);
  
  dibujarInvasores();
  dibujarBala();
  dibujarJugador();
  detectarMateEnemigo();
  
  if(keyIsPressed){
    moverJugador();
  }
}

function keyPressed(){
  disparar(invasores_vidas);
}

function mouseClicked(){
  print(invasores_vidas);
}