let estado_saltar = 0;
let estado_personaje = "CAMINAR";

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
  createCanvas(600, 600);
  textSize(40);
  imageMode(CENTER);
}

function draw() {
  background(200);

  text(estado_saltar, 200, 100);
  if (estado_personaje == "CAMINAR") {
    accion_caminar();
  } else if (estado_personaje == "SALTAR") {
    accion_saltar();
  } else if (estado_personaje == "QUIETO") {
    accion_quieto();
  }
}
