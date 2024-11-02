let miCuadrado1, miCuadrado2, miCuadrado3;

function setup() {
  createCanvas(600,600);
  miCuadrado1 = new Cuadrado();
  miCuadrado2 = new Cuadrado();
  miCuadrado3 = new Cuadrado();
  print(miCuadrado3);
}


function draw() {
  background(200);
  miCuadrado1.dibujar();
  miCuadrado2.dibujar();
  miCuadrado3.dibujar();
}

function mouseClicked(){
  miCuadrado1.posY = 200;
  miCuadrado1.colorDeFondo = color(0,0,255);
  print(miCuadrado1);
}

function keyPressed(){
  miCuadrado2.posY = 0;
  miCuadrado2.colorDeFondo = color(0,255,0);
  print(miCuadrado2);
}
