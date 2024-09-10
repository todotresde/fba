let grilla = [];
let cant = 10;
let tam;
let posXPersonaje = 0;
let posYPersonaje = 0;

function setup() {
  createCanvas(400, 400);
  tam = width/cant;

  for (let i=0; i<10; i+=1) {
    grilla[i] = [];
    for (let j=0; j<10; j+=1) {
      grilla[i][j] = 0;
    }
  }
  //dibujar personaje
  grilla[posXPersonaje][posYPersonaje] = 1;
  //dibujar árboles
  grilla[3][4] = 2;
  grilla[6][6] = 2;
  grilla[8][1] = 2;
  //dibujar casas
  grilla[2][2] = 3;
  grilla[3][8] = 3;

  print(grilla);
}


function draw() {
  background(200);

  for (let i=0; i<10; i+=1) {
    for (let j=0; j<10; j+=1) {
      dibujarCelda(i, j);
    }
  }
}

function keyPressed() {
  if(sePuedeMoverElPersonaje()){
    moverPersonaje();
  }
}

function mousePressed(){
  print(grilla);
}
