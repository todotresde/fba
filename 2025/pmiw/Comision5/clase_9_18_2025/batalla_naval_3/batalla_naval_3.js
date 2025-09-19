let barcosJ1 = [];
let disparosJ1 = [];
let barcosJ2 = [];
let disparosJ2 = [];
let cant = 10;
let tam;
let jugadorActivo = 1;

function setup() {
  createCanvas(800,400);
  tam = (width/2)/cant;
  
  for(let i = 0; i < cant; i++){
    barcosJ1[i] = [];
    disparosJ1[i] = [];
    barcosJ2[i] = [];
    disparosJ2[i] = [];
    for(let j = 0; j < cant; j++){
      barcosJ1[i][j] = 0;
      disparosJ1[i][j] = 0;
      barcosJ2[i][j] = 0;
      disparosJ2[i][j] = 0;
    }
  }
  
  armarTableroJugador1();
  armarTableroJugador2();
}


function draw() {
  background(200);
  if(jugadorActivo == 1){
    dibujarTableroJugador1();
  }else{
    dibujarTableroJugador2();
  }
}

function mousePressed(){
  let i = floor(map(mouseX, 0, 400, 0, cant-1));
  let j = floor(map(mouseY, 0, 400, 0, cant-1));
  
  if(jugadorActivo == 1){
    if(barcosJ1[i][j] == 1){
      barcosJ1[i][j] = 10;
    }
  }
}

function keyPressed(){
  if(jugadorActivo == 1){
    jugadorActivo = 2
  }else if(jugadorActivo == 2){
    jugadorActivo = 1
  }
}
