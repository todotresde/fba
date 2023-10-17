let peronsajeObj;
let imagenMario;

function preload() {
  imagenMario = loadImage('data/mario1.png');
}

function setup() {
  createCanvas(400, 400);
  
  personajeObj = new Personaje();
}


function draw() {
  background(200);
  personajeObj.dibujar();
  personajeObj.teclaPresionada();
}
