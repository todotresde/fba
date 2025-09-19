let cant = 10;
let tam;
let posX = 0;
let dir = 1;
let estados = [];
let colores = [];

function setup() {
  createCanvas(800, 400);
  tam = ((width) /cant) / 2;
  for(let i=0; i<cant; i++){
    estados[i] = true;
    colores[i] = color(255, 0, 0);
  }
}


function draw() {
  background(255);
  for(let i=0; i<cant; i++){
    if(estados[i] == true){
      fill(colores[i]);
      rect(i*tam, 50, tam, tam/2);
    }
  }
}
