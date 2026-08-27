// Ejercicio 3 · Array de tamaños aleatorios
// Un solo array guarda el diámetro de cada círculo. Las posiciones se
// calculan con el índice, así que el array de datos "decora" una grilla fija.
// Click: vuelve a randomizar todos los valores del array.

let diametros = [];
const COLUMNAS = 10;
const FILAS = 10;

function dibujarCirculo(indice, diametro) {
  let col = indice % COLUMNAS;          // columna a partir del índice
  let fil = floor(indice / COLUMNAS);   // fila a partir del índice

  let cw = width / COLUMNAS;
  let ch = height / FILAS;
  let x = col * cw + cw / 2;
  let y = fil * ch + ch / 2;

  circle(x, y, diametro);
}

function setup() {
  createCanvas(600, 600);
  noStroke();
  fill(255);

  // Generamos un valor aleatorio por cada celda de la grilla
  for (let i = 0; i < COLUMNAS * FILAS; i++) {
    diametros.push(random(5, 50));
  }
  print(diametros);
}

function draw() {
  background(10);

  for (let i = 0; i < diametros.length; i++) {
    dibujarCirculo(i, diametros[i]);
  }
}

function mousePressed() {
  // Volver a randomizar todos los valores del array
  for (let i = 0; i < diametros.length; i++) {
    diametros[i] = random(5, 50);
  }
}
