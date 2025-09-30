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
  
  iniciarTablero();
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
  let i = floor(map(mouseX, 400, 800, 0, cant));
  let j = floor(map(mouseY, 0, 400, 0, cant));
    
  if(jugadorActivo == 1){
    if(barcosJ2[i][j] == 1){
      disparosJ1[i][j] = 10;//Tocado
      barcosJ2[i][j] = 10;//Tocado
    }else if(barcosJ2[i][j] == 0){
      disparosJ1[i][j] = 5;//Agua
    }
  }else{
    if(barcosJ1[i][j] == 1){
      disparosJ2[i][j] = 10;//Tocado
      barcosJ1[i][j] = 10;//Tocado
    }else if(barcosJ1[i][j] == 0){
      disparosJ2[i][j] = 5;//Agua
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
