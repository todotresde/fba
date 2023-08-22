let posX = 100;
let posY = 100;
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
  presionarTecla();
}

function keyPressed() {
  teclaPresionadaActiva = true;
}

function keyReleased() {
  teclaPresionadaActiva = false;
}

function presionarTecla() {
  if (teclaPresionadaActiva) {
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

function dibujarPersonaje() {
  dibujarBala();
  
  fill(0);
  rect(posX, posY, playerWidth, playerHeight);
}

function dibujarBala() {
  fill(255, 0, 0);
  ellipse(balaPosX, balaPosY, 10, 10);
  if(balaDisparada){
    balaPosX+=2;
  }
}
