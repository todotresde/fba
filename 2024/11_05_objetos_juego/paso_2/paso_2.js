let juego = new Juego();

function setup() {
  createCanvas(640,480);
}


function draw() {
  background(255);
  juego.dibujar();
}

function keyPressed(){
  juego.teclaPresionada();
}
