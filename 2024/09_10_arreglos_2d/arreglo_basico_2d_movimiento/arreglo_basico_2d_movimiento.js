let grilla = [];
let tam;
let posXPersonaje = 0;
let posYPersonaje = 0;
let cant = 10;

function setup() {
  createCanvas(400, 400);
  tam = width/cant;
  for(let i=0; i<cant; i+=1){
    grilla[i] = [];
    for(let j=0; j<cant; j+=1){
      grilla[i][j] = 0;
    }
  }
  
  //Asignación del personaje en la grilla
  grilla[posXPersonaje][posYPersonaje] = 1;
  //Asignación de árboles
  grilla[2][3] = 2;
  grilla[4][4] = 2;
  grilla[6][1] = 2;
  
  print(grilla);
}


function draw() {
  background(200);
  
  for(let i=0; i<cant; i+=1){
    for(let j=0; j<cant; j+=1){
      if(grilla[i][j] === 1){
        fill(0);
      }else if(grilla[i][j] === 2){
        fill(0,255,0);
      }else{
        fill(255);
      }
      rect(i*tam, j*tam, tam, tam);
    }
  }
}

function keyPressed(){
  grilla[posXPersonaje][posYPersonaje] = 0;
  if (keyCode === LEFT_ARROW){
    posXPersonaje--;
  }else if (keyCode === RIGHT_ARROW){
    posXPersonaje++;
  }else if (keyCode === UP_ARROW){
    posYPersonaje--;
  }else if (keyCode === DOWN_ARROW){
    posYPersonaje++;
  }
  grilla[posXPersonaje][posYPersonaje] = 1;
}

function mousePressed(){
  print(grilla);
}
