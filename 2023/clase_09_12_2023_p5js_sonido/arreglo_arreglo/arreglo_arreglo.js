let cant = 3;
let posX = [];

function setup() {
  createCanvas(500, 500);
  for(let i=0; i<cant; i++){
    posX[i] = (i * 100) + 50;
  }
}


function draw() {
  console.log(posX);
  background(200);
  for(let i=0; i<cant; i++){
    rect(posX[i], 200, 50, 20);
    posX[i]++;
    
    if(posX[i] > 500){
      posX[i] = -100;
    }
  }
}
