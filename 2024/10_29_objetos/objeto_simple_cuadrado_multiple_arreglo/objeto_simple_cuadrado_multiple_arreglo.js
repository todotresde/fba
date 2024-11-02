let misCuadrados = [];

function setup() {
  createCanvas(600,600);
  misCuadrados[0] = new Cuadrado(100, 50, 50, 200, color(255,100,5));
  misCuadrados[1] = new Cuadrado(300, 200, 50, 50, color(0,255,0));
  misCuadrados[2] = new Cuadrado(50, 150, 100, 10, color(255,0,0));
  print(misCuadrados);
}


function draw() {
  background(200);
  misCuadrados[0].dibujar();
  misCuadrados[1].dibujar();
  misCuadrados[2].dibujar();
}

function mouseClicked(){
  misCuadrados[0].click();
  misCuadrados[1].click();
  misCuadrados[2].click();
}
