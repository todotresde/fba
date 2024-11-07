let miJuego;

function setup() {
  createCanvas(640, 480);
  miJuego = new Juego();
}


function draw() {
  background(200);
  miJuego.dibujar();
  
  if(keyIsPressed){
    miJuego.teclaPresionada();
  }
}
