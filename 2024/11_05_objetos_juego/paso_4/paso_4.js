let juego;

function setup() {
  createCanvas(640,480);
  juego = new Juego();
}


function draw() {
  background(255);
  juego.dibujar();
  
  if(keyIsPressed){
    juego.teclaPresionada();
  }
}
