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
  imageMode(CENTER);
}

function draw(){
  background(0);
  accion_caminar();
  accion_saltar();
  accion_quieto();
}
