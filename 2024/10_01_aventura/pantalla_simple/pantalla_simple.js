let anchoPantalla = 1000;
let altoPantalla = 800;
let anchoTexto;
let tamTexto;
let inicioTexto;
let img1;

function preload() {
  img1 = loadImage("data/img1.webp");
}

function setup() {
  createCanvas(anchoPantalla, altoPantalla);
}

function draw() {
  background(255);
  image(img1, 0, 0, anchoPantalla, altoPantalla);

  text(
    "había una vez un hombre que viviía en un mundo muy feliz alterno",
    inicioTexto,
    inicioTexto,
    anchoTexto
    );
  
  reload();
}

function reload(){
  anchoPantalla = mouseX;
  altoPantalla = mouseY;
  
  anchoTexto = anchoPantalla * 0.8;
  tamTexto = altoPantalla * 0.10;
  inicioTexto = anchoPantalla * 0.05;
  
  textSize(tamTexto);
}
