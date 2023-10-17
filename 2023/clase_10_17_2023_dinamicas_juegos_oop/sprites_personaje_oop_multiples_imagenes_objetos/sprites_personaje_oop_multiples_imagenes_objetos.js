let personajeObj, personajeObj2;
let imagenesMarioDer = [];
let imagenesMarioIzq = [];
let cantImagenes = 4;

function preload() {
  imagenMario = loadImage('data/mario1.png');
  for(let i=0; i < cantImagenes; i++){
    imagenesMarioDer[i] = loadImage('data/mario' + (i+1) + '.png');
    imagenesMarioIzq[i] = loadImage('data/mario' + (i+1) + '_izq.png');
  }
}

function setup() {
  createCanvas(400, 400);
  
  personajeObj = new Personaje();
  personajeObj2 = new Personaje();
}


function draw() {
  background(200);
  personajeObj.dibujar();
  personajeObj.teclaPresionada();
  
  personajeObj2.dibujar();
  personajeObj2.teclaPresionada();
}
