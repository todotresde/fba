let miArreglo = [];
let cant = 10;
let tam;

function setup() {
  createCanvas(400,400);
  tam = width / cant;
  
  for(let i = 0; i < cant; i++){
    miArreglo[i] = [];
    for(let j = 0; j < cant; j++){
      miArreglo[i][j] = 0;
    }
  }
}


function draw() {
  background(200);
  for(let i = 0; i < cant; i++){
    for(let j = 0; j < cant; j++){
      rect(i*tam, j*tam, tam, tam);
      text(miArreglo[i][j], i*tam + tam/2, j*tam + 20);
    }
  }
}

function mousePressed(){
  let i = round(map(mouseX, 0, width, 0, cant-1));
  let j = round(map(mouseY, 0, height, 0, cant-1));
  console.log(i, j);
  miArreglo[i][j]++;
}
