let grilla = [];
let cant = 10;
let tam;
let posXPersonaje = 0;
let posYPersonaje = 0;
let celdaADibujar = 0;

function setup() {
  createCanvas(400, 400);
  tam = width/cant;
  textSize(20);
  
  for (let i=0; i<10; i+=1) {
    grilla[i] = [];
    for (let j=0; j<10; j+=1) {
      grilla[i][j] = 0;
    }
  }
  //dibujar personaje
  grilla[posXPersonaje][posYPersonaje] = 1;

  print(grilla);
}


function draw() {
  background(200);

  for (let i=0; i<10; i+=1) {
    for (let j=0; j<10; j+=1) {
      dibujarCelda(i, j);
    }
  }
  fill(0,0,255);
  text("CELDA: " + celdaADibujar, 10, 50);
}

function keyPressed() {
  //Movimiento del personaje
  if(sePuedeMoverElPersonaje()){
    moverPersonaje();
  }
  definirCeldaADibujar();
}

function mousePressed() {
  for (let i=0; i<cant; i+=1) {
    for (let j=0; j<cant; j+=1) {
      if (mouseX > i*tam && mouseX < i*tam + tam && mouseY > j*tam && mouseY < (j*tam) + tam) {
        grilla[i][j] = celdaADibujar;
      }
    }
  }

  print(grilla);
}
