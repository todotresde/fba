let miCuadrado1, miCuadrado2, miCuadrado3;

function setup() {
  createCanvas(600,600);
  miCuadrado1 = new Cuadrado(100, 50, 50, 200, color(255,100,5));
  miCuadrado2 = new Cuadrado(300, 200, 50, 50, color(0,255,0));
  miCuadrado3 = new Cuadrado(50, 150, 100, 10, color(255,0,0));
  print(miCuadrado3);
}


function draw() {
  background(200);
  miCuadrado1.dibujar();
  miCuadrado2.dibujar();
  miCuadrado3.dibujar();
}

function mouseClicked(){
  miCuadrado1.click();
  miCuadrado2.click();
  miCuadrado3.click();
}
