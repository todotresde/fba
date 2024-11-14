let juego;

function setup() {
  createCanvas(640, 480);
  juego = new Juego();
}


function draw() {
  juego.dibujar();
  
  if(keyIsPressed){
    juego.teclaPresionada();
  }
}
