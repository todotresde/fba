let imagenesMario = [];
let cantImagenes = 4;
let posXImagenesMario = [];

function preload() {
  for(let i=0; i<cantImagenes; i++){
    imagenesMario[i] = loadImage('data/mario' + (i+1) + '.png');
    posXImagenesMario[i] = -250 + i*60;
  }
}


function setup() {
  createCanvas(400,400);
}


function draw() {
  background(200);
  
  for(let i=0; i<cantImagenes; i++){
    image(imagenesMario[i], posXImagenesMario[i], 200);
  }
  
  calcularPosXImagenes();
}

function calcularPosXImagenes(){
  for(let i=0; i<cantImagenes; i++){
    posXImagenesMario[i]++;
    if(posXImagenesMario[i] > 450){
      posXImagenesMario[i] = -250 + i*60;
    }
  }
}
