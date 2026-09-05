let caminar_cant = 6;
let saltar_cant = 4;
let quieto_cant = 2;

let caminar = [];
let saltar = [];
let quieto = [];

let velocidadAnimacion = 10;

let indice = 0;

function preload() {
  for (let a = 0; a < caminar_cant; a++) {
    let imagen = loadImage("images/caminar_" + a + ".png");
    caminar.push(imagen);
  }
  
  for (let a = 0; a < saltar_cant; a++) {
    let imagen = loadImage("images/saltar_" + a + ".png");
    saltar.push(imagen);
  }
  
  for (let a = 0; a < quieto_cant; a++) {
    let imagen = loadImage("images/quieto_" + a + ".png");
    quieto.push(imagen);
  }
  print(caminar, saltar, quieto);
}

function setup() {
  createCanvas(600, 600);
  imageMode(CENTER);
}

function draw(){
  background(0);
  let frame = floor(frameCount / velocidadAnimacion) % caminar_cant;
  image(caminar[frame], 200, 200);
  //print(frameCount, frame);
  /**
  if(frameCount % 10 == 0){
    indice++
  }
  if(indice>5){
    indice = 0;
  }
  **/
}
