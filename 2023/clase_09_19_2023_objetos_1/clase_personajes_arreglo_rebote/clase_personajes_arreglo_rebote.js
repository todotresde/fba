let cantidadPersonajes = 200;
let objetoPersonajes = [];

function setup() {
  createCanvas(400, 400);
  
  for(let i = 0; i<cantidadPersonajes; i++){
    objetoPersonajes[i] = new Personaje();
  }
}


function draw() {
  background(200);
  for(let i = 0; i<cantidadPersonajes; i++){
    objetoPersonajes[i].dibujar();
  }
}

function mouseClicked(){
  for(let i = 0; i<cantidadPersonajes; i++){
    objetoPersonajes[i].cambiarColorSiHiceClick();
  }
}
