let posX = 100;
let posY = 100;
let playerWidth = 30;
let playerHeight = 100;
let balaPosX = [];
let balaPosY = [];
let balasDisparadas = [];
let balaDisparada = false;
let cantBalas = 100;
let delayDisparo = 0;

function setup() {
  createCanvas(400, 400);
  
  for(let i=0; i<cantBalas; i++){
    balaPosX.push(posX + playerWidth/2);
    balaPosY.push(posY + playerHeight/2);
    balasDisparadas.push(false);
  }
}

function draw() {
  background(200);

  dibujarPersonaje();
  presionarTecla();
}

function presionarTecla() {
  if (keyIsPressed) {
    if (keyCode == RIGHT_ARROW) {
      posX+=1;
    } else if (keyCode == LEFT_ARROW) {
      posX-=1;
    } else if (keyCode == ENTER) {
      balaDisparada = true;
    }
  }
}

function dibujarPersonaje() {
  dibujarBalas();
  
  fill(0);
  rect(posX, posY, playerWidth, playerHeight);
}

function dibujarBalas() {
  for(let i=0; i<cantBalas; i++){
    if(balaDisparada && balasDisparadas[i] == false){
      balasDisparadas[i] = true;
      balaDisparada = false;
    }
  }
  
  for(let i=0; i<cantBalas; i++){
    fill(255, 0, 0);
    ellipse(balaPosX[i], balaPosY[i], 10, 10);
    if(balasDisparadas[i] == true){
      balaPosX[i]+=5;
    }
  }
}
