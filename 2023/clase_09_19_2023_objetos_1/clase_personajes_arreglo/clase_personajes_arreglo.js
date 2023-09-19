let cantidadPersonajes = 2;
let objetoPersonajes = [];

function setup() {
  createCanvas(400, 400);
  
  for(let i = 0; i<cantidadPersonajes; i++){
    objetoPersonajes[i] = new Personaje();
  }
}


function draw() {
  for(let i = 0; i<cantidadPersonajes; i++){
    objetoPersonajes[i].dibujar();
  }
}

function mouseClicked(){
  for(let i = 0; i<cantidadPersonajes; i++){
    objetoPersonajes[i].cambiarColorSiHiceClick();
  }
}
