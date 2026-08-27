// Ejercicio 2 · Array de posiciones (x, y)
// Dos arrays paralelos (xs e ys) guardan las coordenadas de muchos puntos.
// Click: agrega puntos nuevos al array. Tecla "c": vacía los arrays.

let xs = [];
let ys = [];

function agregarPosicion(x, y) {
  xs.push(x);
  ys.push(y);
}

function setup() {
  createCanvas(600, 600);

  // Llenamos los arrays con un bucle: 40 posiciones aleatorias
  for (let i = 0; i < 40; i++) {
    agregarPosicion(random(width), random(height));
  }
}

function draw() {
  background(15, 20);
  noStroke();
  fill(255, 200, 0);

  // Recorremos ambos arrays en paralelo con el mismo índice i
  for (let i = 0; i < xs.length; i++) {
    circle(xs[i], ys[i], 18);
  }
}

function mousePressed() {
  // Agregar una nueva posición al hacer click
  print(xs, ys);
  agregarPosicion(mouseX, mouseY);
}

function keyPressed() {
  // Vaciar los arrays con la tecla "c"
  if (key === 'c') {
    xs = [];
    ys = [];
  }
}
