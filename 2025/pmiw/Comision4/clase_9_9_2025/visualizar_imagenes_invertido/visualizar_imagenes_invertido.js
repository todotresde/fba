let imagenesDeMiPersonajeDer = [];
let imagenesDeMiPersonajeIzq = [];
let cant = 6;
let indicePersonaje = 0;
let direccion = 1;

function preload(){
  for(let i=1; i<=cant; i++){
    imagenesDeMiPersonajeDer[i-1] = loadImage("data/p" + i + ".png");
    imagenesDeMiPersonajeIzq[i-1] = loadImage("data/p" + i + "i.png");
  }
}
function setup() {
  createCanvas(400,400);
}


function draw() {
  background(255);
  if(direccion == 1){
    image(imagenesDeMiPersonajeDer[indicePersonaje], 100, 100);
  } else {
    image(imagenesDeMiPersonajeIzq[indicePersonaje], 100, 100);
  }
  
  if(keyIsPressed){
    moverPersonaje()
  }
}

function moverPersonaje(){
  if(keyCode === RIGHT_ARROW){
    indicePersonaje++;
    direccion = 1;
    
    if(indicePersonaje==6){
      indicePersonaje=0;
    }
  } else if(keyCode === LEFT_ARROW){
    indicePersonaje++;
    direccion = -1;
    
    if(indicePersonaje==6){
      indicePersonaje=0;
    }
  }
  
}
