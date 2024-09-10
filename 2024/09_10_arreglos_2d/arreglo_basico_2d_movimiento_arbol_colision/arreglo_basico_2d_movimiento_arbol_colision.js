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
  //Asignación de casas
  grilla[5][2] = 3;
  grilla[8][8] = 3;
  
  print(grilla);
}


function draw() {
  background(200);
  
  for(let i=0; i<cant; i+=1){
    for(let j=0; j<cant; j+=1){
      dibujarCelda(i,j);
    }
  }
}

function keyPressed(){
  if(sePuedeMoverElPersonaje()){
    moverPersonaje();
  }
}

function mousePressed(){
  print(grilla);
}
