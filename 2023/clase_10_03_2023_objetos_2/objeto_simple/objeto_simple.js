let objPersonaje1, objPersonaje2, objPersonaje3;

function setup() {
  createCanvas(500, 500);
  objPersonaje1 = new Personaje(100, 200, color(255,45,34));
  objPersonaje2 = new Personaje(300, 400, color(0,255,34));
  objPersonaje3 = new Personaje(200, 400, color(255,255,34));
}


function draw() {
  background(250);
  objPersonaje1.dibujar();
  objPersonaje2.dibujar();
  objPersonaje3.dibujar();
}

function mousePressed(){
  objPersonaje1.click();
  objPersonaje2.click();
  objPersonaje3.click();
}

function keyPressed(){
  objPersonaje1.mover();
  objPersonaje2.mover();
  objPersonaje3.mover();
}
