let miCuadrado;

function setup() {
  createCanvas(600,600);
  miCuadrado = new Cuadrado();
  print(miCuadrado);
}


function draw() {
  miCuadrado.dibujar();
}
