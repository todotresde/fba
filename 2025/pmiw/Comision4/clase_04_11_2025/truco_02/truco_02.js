let juego;

function setup() {
  createCanvas(400, 400);
  juego = new Juego();
}


function draw() {
  juego.dibujar();
}
