// Ejercicio 3 · Array de tamaños aleatorios
// Un solo array guarda el diámetro de cada círculo. Las posiciones se
// calculan con el índice, así que el array de datos "decora" una grilla fija.
// Click: vuelve a randomizar todos los valores del array.

let diametros = [];
const COLUMNAS = 10;
const FILAS = 10;

function dibujarCirculo(i, j, diametro) {
  let cw = width / COLUMNAS;
  let ch = height / FILAS;
  let x = i * cw + cw / 2;
  let y = j * ch + ch / 2;

  circle(x, y, diametro);
}

function setup() {
  createCanvas(600, 600);
  noStroke();
  fill(255);

  // Generamos un valor aleatorio por cada celda de la grilla
  for (let i = 0; i < COLUMNAS ; i++) {
    let diametroInterno = [];
    for (let j = 0; j < FILAS ; j++) {
      diametroInterno.push(random(5, 50));
    }
    diametros.push(diametroInterno);
  }
  print(diametros);
}

function draw() {
  background(10);

  for (let i = 0; i < COLUMNAS; i++) {
    for (let j = 0; j < FILAS; j++) {
      dibujarCirculo(i, j, diametros[i][j]);
    }
  }
}

function mousePressed() {
  // Volver a randomizar todos los valores del array
  for (let i = 0; i < COLUMNAS ; i++) {
    let diametroInterno = [];
    for (let j = 0; j < FILAS ; j++) {
      diametroInterno.push(random(5, 50));
    }
    diametros.push(diametroInterno);
  }
}
