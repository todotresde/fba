let juego;

function setup() {
  createCanvas(400, 400);
  juego = new Juego();
}


function draw() {
  background(200);
  juego.dibujar();
}
