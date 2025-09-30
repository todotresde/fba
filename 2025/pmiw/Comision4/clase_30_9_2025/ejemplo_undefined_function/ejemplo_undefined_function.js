let tam, posX, posY;

function setup() {
  createCanvas(400,400);
}


function draw() {
  background(200);
  dibujarFigura(posX, posY, tam);
}

function mouseClicked(){
  posX = 0;
  posY = 0;
  tam = 50;
}

function dibujarFigura(posX, posY, tam){
  if(posX != undefined && posY != undefined && tam != undefined){
    rect(posX, posY, tam, tam);
  }else{
    rect(100,100,50,50);
  }
}
