let imagenesDeMiPersonaje = [];
let cant = 6;
let indicePersonaje = 0;

function preload(){
  for(let i=1; i<=cant; i++){
    imagenesDeMiPersonaje[i-1] = loadImage("data/p" + i + ".png");
  }
}
function setup() {
  createCanvas(400,400);
}


function draw() {
  background(255);
  image(imagenesDeMiPersonaje[indicePersonaje], 100, 100);
}

function keyPressed(){
  indicePersonaje++;
  print(indicePersonaje);
  if(indicePersonaje==6){
    indicePersonaje=0;
  }
}
