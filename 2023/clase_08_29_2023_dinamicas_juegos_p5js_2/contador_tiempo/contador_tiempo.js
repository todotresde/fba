let contador = 0;
let tiempo = 0;
let tiempoInicial = 0;
let estaActivo = false;

function setup() {
  createCanvas(400,400);
}


function draw() {
  background(200);
  textSize(30)
  text(round(millis()/1000), 200, 200);
  
  text(20 - round(millis()/1000), 300, 200);
  
  if(estaActivo){
    tiempo = round(millis()/1000) - tiempoInicial;
    text(tiempo, 300, 300);
  }
}

function mouseClicked(){
  tiempoInicial = round(millis()/1000);
  estaActivo = true;
}
