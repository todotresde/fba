let anchoPantalla = 800;
let altoPantalla = 600;
let anchoTexto;
let tamTexto;
let inicioTexto;
let img1;
let posTextoActual = 0;
let posXBoton;
let posYBoton;

function preload() {
  img1 = loadImage("data/img1.webp");
  misTextos = loadStrings('data/aventura.txt');
}

function setup() {
  createCanvas(anchoPantalla, altoPantalla);
}

function draw() {
  background(255);
  image(img1, 0, 0, anchoPantalla, altoPantalla);
  
  fill(0);
  text(
    misTextos[obtenerTextActual()],
    inicioTexto,
    inicioTexto,
    anchoTexto
    );
  
  reload();
  dibujarBotonCuadrado();
}

function mouseClicked(){
  clickBotonCuadrado();
}
