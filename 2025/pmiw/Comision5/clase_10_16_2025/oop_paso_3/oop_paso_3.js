let juego = new Juego();

function setup() {
  createCanvas(400,400);
  juego.iniciarJuego();
}


function draw() {
  juego.dibujar();
}
