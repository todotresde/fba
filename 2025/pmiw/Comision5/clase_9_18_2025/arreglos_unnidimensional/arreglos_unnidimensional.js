let miArreglo = [];
let cant = 10;
let tam;

function setup() {
  createCanvas(400,400);
  tam = width / cant;
  debugger
  for(let i = 0; i < cant; i++){
    miArreglo[i] = 0;
  }
}


function draw() {
  background(200);
  for(let i = 0; i < cant; i++){
    rect(i*tam, 100, tam, tam);
    text(miArreglo[i], i*tam + tam/2, 120);
  }
}

function mousePressed(){
  miArreglo[2]++;
}
