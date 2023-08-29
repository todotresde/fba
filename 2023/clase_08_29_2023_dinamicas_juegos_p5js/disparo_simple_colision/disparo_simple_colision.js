let posX = 50;
let posY = 100;
let posXEnemigo = 300;
let posYEnemigo = 100;
let vidasEnemigo = 3;
let enemigoEstaVivo = true;
let playerWidth = 30;
let playerHeight = 100;
let teclaPresionadaActiva = false;
let balaPosX = posX + playerWidth/2;
let balaPosY = posY + playerHeight * 0.5;
let balaDisparada = false;

function setup() {
  createCanvas(400, 400);
}


function draw() {
  background(200);

  dibujarPersonaje();
  dibujarEnemigo();
  presionarTecla();
}


function presionarTecla() {
  if (keyIsPressed) {
    if (keyCode == RIGHT_ARROW) {
      posX+=5;
      if(!balaDisparada){
        balaPosX+=5;
      }
    } else if (keyCode == LEFT_ARROW) {
      posX-=5;
      if(!balaDisparada){
        balaPosX-=5;
      }
    } else if (keyCode == ENTER) {
      balaDisparada = true;
    }
  }
}
