// Ejercicio 4 · Array 2D (grilla)
// Un array de arrays (matriz) representa una grilla: grilla[fila][columna].
// Cada celda guarda un ángulo que rota un cuadrado. Se recorre con dos
// for anidados. Click: reasigna un valor puntual de la matriz según la
// celda clickeada.

let grilla = [];
const COLUMNAS = 12;
const FILAS = 12;

function dibujarCelda(x, y, angulo, tam) {
  push();
  translate(x, y);
  rotate(angulo);
  rect(0, 0, tam, tam);
  pop();
}

function setup() {
  createCanvas(600, 600);
  angleMode(DEGREES);
  rectMode(CENTER);
  noFill();
  stroke(255);

  // Construimos un array 2D: un array de filas, cada fila es un array de columnas
  for (let f = 0; f < FILAS; f++) {
    let fila = [];
    for (let c = 0; c < COLUMNAS; c++) {
      fila.push(random(360));
    }
    grilla.push(fila);
  }
  print(grilla);
}

function draw() {
  background(10);

  let cw = width / COLUMNAS;
  let ch = height / FILAS;

  // Recorrido de un array 2D: for anidado (fila, luego columna)
  for (let f = 0; f < FILAS; f++) {
    for (let c = 0; c < COLUMNAS; c++) {
      let x = c * cw + cw / 2;
      let y = f * ch + ch / 2;
      dibujarCelda(x, y, grilla[f][c] + frameCount * 0.3, cw * 0.7);
    }
  }
}

function mousePressed() {
  // Reasignar un valor puntual de la matriz según la celda clickeada
  let c = floor(mouseX / (width / COLUMNAS));
  let f = floor(mouseY / (height / FILAS));
  if (grilla[f] && grilla[f][c] !== undefined) {
    grilla[f][c] = random(360);
  }
}
