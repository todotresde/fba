// Ejercicio 5 · Estela (push / shift) con arrays paralelos
// Dos arrays paralelos (xsEstela, ysEstela) guardan las posiciones
// recientes del mouse. Crecen con push() cada vez que se dibuja un frame,
// y se achican con shift() cuando superan el largo máximo: así funcionan
// como una "cola" de posiciones recientes.

let xsEstela = [];
let ysEstela = [];
const LARGO_MAX = 60;

function dibujarPunto(x, y, t) {
  // t va de 0 (viejo) a 1 (nuevo): controla color y tamaño
  fill(255 * t, 100, 255 * (1 - t), 200);
  circle(x, y, map(t, 0, 1, 4, 30));
}

function setup() {
  createCanvas(600, 600);
  noStroke();
}

function draw() {
  background(10, 40);

  // Agregamos la posición actual del mouse al final de los arrays
  xsEstela.push(mouseX);
  ysEstela.push(mouseY);

  // Si los arrays crecieron demasiado, sacamos el elemento más viejo (el primero)
  if (xsEstela.length > LARGO_MAX) {
    xsEstela.shift();
    ysEstela.shift();
  }

  // Recorremos ambos arrays en paralelo con el mismo índice i
  for (let i = 0; i < xsEstela.length; i++) {
    let t = i / xsEstela.length;
    dibujarPunto(xsEstela[i], ysEstela[i], t);
  }
}
