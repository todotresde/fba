let grilla = [];
let cant = 10;
let tam;

function setup() {
  createCanvas(400, 400);
  tam = width/cant;

  for (let i=0; i<10; i+=1) {
    grilla[i] = [];
    for (let j=0; j<10; j+=1) {
      grilla[i][j] = false;
    }
  }
}


function draw() {
  background(200);

  for (let i=0; i<10; i+=1) {
    for (let j=0; j<10; j+=1) {
      if (grilla[i][j] === true) {
        fill(0);
      } else {
        fill(255);
      }
      rect(i*tam, j*tam, tam, tam);
    }
  }
}

function mousePressed() {
  for (let i=0; i<10; i+=1) {
    for (let j=0; j<10; j+=1) {
      if (mouseX > i*tam && mouseX < i*tam + tam && mouseY > j*tam && mouseY < (j*tam) + tam) {
        grilla[i][j] = !grilla[i][j];
      }
    }
  }

  print(grilla);
}
