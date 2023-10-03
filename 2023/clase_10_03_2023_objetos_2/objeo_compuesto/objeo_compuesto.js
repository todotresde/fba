let objJuego;

function setup() {
  createCanvas(500, 500);
  objJuego = new Juego();
}


function draw() {
  background(250);
  objJuego.dibujar();
}

function mousePressed(){
  objJuego.click();
}

function keyPressed(){
  objJuego.mover();
}
