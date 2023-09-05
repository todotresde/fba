let imagenesMario = [];
let cantImagenes = 4;
let posXImagenesMario = 0;

function preload() {
  for(let i=0; i<cantImagenes; i++){
    imagenesMario[i] = loadImage('data/mario' + (i+1) + '.png');
  }
}


function setup() {
  createCanvas(400,400);
}


function draw() {
  background(200);
  
  for(let i=0; i<cantImagenes; i++){
    image(imagenesMario[i], 30 + i*60 + posXImagenesMario, 200);
  }
  
  posXImagenesMario++;
  
  if(posXImagenesMario > 450){
    posXImagenesMario = -250;
  }
}

function mouseClicked(){

}
