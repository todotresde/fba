let objetoPersonaje1, objetoPersonaje2, objetoPersonaje3;

function setup() {
  createCanvas(400, 400);
  
  objetoPersonaje1 = new Personaje();
  objetoPersonaje2 = new Personaje();
  objetoPersonaje3 = new Personaje();
}


function draw() {
  objetoPersonaje1.dibujar();
  objetoPersonaje2.dibujar();
  objetoPersonaje3.dibujar();
}

function mouseClicked(){
  objetoPersonaje1.cambiarColorSiHiceClick();
  objetoPersonaje2.cambiarColorSiHiceClick();
  objetoPersonaje3.cambiarColorSiHiceClick();
}
