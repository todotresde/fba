let juego;

function setup() {
  createCanvas(400,400);
  juego = new Juego();
  juego.iniciar();
}


function draw() {
  background(255);
  juego.dibujar();
}

function keyPressed() {
  juego.teclaPresionada();
}
