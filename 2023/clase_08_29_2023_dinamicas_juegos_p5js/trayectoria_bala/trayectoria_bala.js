let posX = 200;
let posY = 400;
let angulo = 0;
let disparoActivado = false;
let posXMouseX, posYMouseY;

function setup() {
  createCanvas(400, 400);
}

function draw() {
  background(220);
  fill(0);
  ellipse(posX, posY, 10, 10);
  
  if(disparoActivado){
    posX+=cos(radians(angulo));
    posY+=sin(radians(angulo));
  
    angulo = obtenerAngulo(posX, posY, posXMouseX, posYMouseY);
  }
  
  textSize(30);
  text(angulo, 300,100);
}

function mouseClicked(){
  disparoActivado = true;
  posXMouseX = mouseX;
  posYMouseY = mouseY;
}

function keyPressed(){
  disparoActivado = false;
  posX = 200;
  posY = 400;
}

function obtenerAngulo(pX1,pY1,pX2,pY2){
  return atan2(pY2 - pY1, pX2 - pX1)* 180/ PI;
}
