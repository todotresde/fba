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

  print(grilla);
}


function draw() {
  background(200);

  for (let i=0; i<10; i+=1) {
    for (let j=0; j<10; j+=1) {
      if (grilla[i][j] === 1) {
        fill(0);
      }else if (grilla[i][j] === 2) {
        fill(0,255,0);
      } else {
        fill(255);
      }
      rect(i*tam, j*tam, tam, tam);
    }
  }
}

function keyPressed() {
  grilla[posXPersonaje][posYPersonaje] = 0;

  if (keyCode === DOWN_ARROW) {
    posYPersonaje++;
  } else if (keyCode === UP_ARROW) {
    posYPersonaje--;
  } else if (keyCode === LEFT_ARROW) {
    posXPersonaje--;
  } else if (keyCode === RIGHT_ARROW) {
    posXPersonaje++;
  }
  
  grilla[posXPersonaje][posYPersonaje] = 1;

}

function mousePressed(){
  print(grilla);
}
