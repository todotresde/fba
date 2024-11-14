let principal = new Principal();

function setup() {
  createCanvas(640, 480);
}


function draw() {
  principal.dibujar();
}

function keyPressed() {
  principal.teclaPresionada();
}
