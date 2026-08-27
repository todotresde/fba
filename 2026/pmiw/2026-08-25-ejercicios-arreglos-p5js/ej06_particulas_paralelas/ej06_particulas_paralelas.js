// Ejercicio 6 · Arrays paralelos (sistema de partículas)
// En vez de un array de objetos, cada propiedad de las partículas vive en
// su propio array (posXs, posYs, velXs, velYs, diametros, colores), todos
// del mismo largo, y se recorren juntos con el mismo índice i.

let posXs = [];
let posYs = [];
let velXs = [];
let velYs = [];
let diametros = [];
let colores = [];

function agregarParticula(x, y) {
  posXs.push(x);
  posYs.push(y);
  velXs.push(random(-2, 2));
  velYs.push(random(-2, 2));
  diametros.push(random(10, 24));
  colores.push(color(random(255), random(255), random(255), 200));
}

function moverParticula(i) {
  posXs[i] += velXs[i];
  posYs[i] += velYs[i];

  // Rebote en los bordes
  if (posXs[i] < 0 || posXs[i] > width) velXs[i] *= -1;
  if (posYs[i] < 0 || posYs[i] > height) velYs[i] *= -1;
}

function dibujarParticula(i) {
  fill(colores[i]);
  circle(posXs[i], posYs[i], diametros[i]);
}

function setup() {
  createCanvas(600, 600);

  // Creamos 80 partículas: cada una agrega un valor a cada array
  for (let i = 0; i < 80; i++) {
    agregarParticula(random(width), random(height));
  }
}

function draw() {
  background(15);
  noStroke();

  // Recorremos todos los arrays en paralelo con el mismo índice i
  for (let i = 0; i < posXs.length; i++) {
    moverParticula(i);
    dibujarParticula(i);
  }
}

function mousePressed() {
  agregarParticula(mouseX, mouseY);
}
