let posiciones = [];
let tam;
let posX = 0;
let cant = 10;

function setup() {
  createCanvas(400, 400);
  tam = width/cant;
  // i=0, j=0 ==> false
  // i=0, j=1 ==> false
  // i=0, j=2 ==> false
  // ...
  // i=1, j=0 ==> false
  // i=1, j=1 ==> false
  for(let i=0; i<cant; i+=1){
    posiciones[i] = [];
    for(let j=0; j<cant; j+=1){
      posiciones[i][j] = false;
    }
  }
  print(posiciones);
}


function draw() {
  background(200);
  
  for(let i=0; i<cant; i+=1){
    for(let j=0; j<cant; j+=1){
        if(posiciones[i][j] === true){
          fill(0);
        }else{
          fill(255);
        }
      rect(i*tam, j*tam, tam, tam);
    }
  }
}

function mousePressed(){
  for(let i=0; i<cant; i+=1){
    for(let j=0; j<cant; j+=1){
      if(mouseX > i*tam && mouseX < i*tam + tam && mouseY > j*tam && mouseY < (j*tam) + tam){
        posiciones[i][j] = !posiciones[i][j]; 
      }
    }
  }
  print(posiciones);
}
