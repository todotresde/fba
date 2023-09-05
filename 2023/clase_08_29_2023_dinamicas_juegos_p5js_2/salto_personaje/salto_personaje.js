let posX = 200;
let posYInicial = 200;
let posY = posYInicial;
let vida = 100;
let personajeEstaSaltando = false;
let direccionSalto = -1;
let incrementoPosX = 1;
let alturaSalto = 100;

let contador = 0;

function setup() {
  createCanvas(400, 400);
}


function draw() {
  background(200);
  dibujarPersonaje();
}
