let estado_saltar = 0;
let estado_personaje = "CAMINAR";

let fondo;
let posX_fondo = 0;
let nube;
let posX_nube = 400;

let cantidad_saltos = 0;

let posX_caminar = 0;
let posY_saltar = 200;

let caminar_cant = 6;
let saltar_cant = 4;
let quieto_cant = 2;

let caminar = [];
let saltar = [];
let quieto = [];

let velocidadAnimacion = 10;

function preload() {
  precargar();
}

function setup() {
  createCanvas(400, 400);
  textSize(40);
}

function draw() {
  background(200);
  
  imageMode(CORNER);
  image(fondo, posX_fondo, 0, 2000, 300);
  image(nube, posX_nube, 0, 30, 30);

  imageMode(CENTER);
  if (estado_personaje == "CAMINAR") {
    accion_caminar();
    posX_fondo--;
    posX_nube-=2;
  } else if (estado_personaje == "SALTAR") {
    accion_saltar();
  } else if (estado_personaje == "QUIETO") {
    accion_quieto();
  }
}
