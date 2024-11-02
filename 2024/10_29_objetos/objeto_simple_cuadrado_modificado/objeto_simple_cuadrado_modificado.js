let miCuadrado;

function setup() {
  createCanvas(600,600);
  miCuadrado = new Cuadrado();
  print(miCuadrado);
}


function draw() {
  background(200);
  miCuadrado.dibujar();
}

function mouseClicked(){
  miCuadrado.posY = 200;
  miCuadrado.colorDeFondo = color(0,0,255);
}
