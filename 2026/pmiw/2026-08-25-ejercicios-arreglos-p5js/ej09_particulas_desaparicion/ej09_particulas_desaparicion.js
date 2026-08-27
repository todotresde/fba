// Ejercicio 9 · Reconstruir un array a mano (partículas que desaparecen)
// Cada "chispa" vive repartida en varios arrays paralelos: posXs, posYs,
// velXs, velYs, vidas. Cuando la vida llega a cero hay que descartarla:
// en vez de una función mágica, recorremos los arrays viejos a mano y
// solo agregamos a arrays nuevos las chispas que siguen vivas.

let posXs = [];
let posYs = [];
let velXs = [];
let velYs = [];
let vidas = [];

function agregarChispa(x, y) {
  posXs.push(x);
  posYs.push(y);
  velXs.push(random(-6, 6));
  velYs.push(random(-6, 6));
  vidas.push(255);
}

function actualizarChispa(i) {
  posXs[i] += velXs[i];
  posYs[i] += velYs[i];
  velXs[i] *= 0.96;
  velYs[i] *= 0.96;
  vidas[i] -= 4;
}

function dibujarChispa(i) {
  fill(255, 180, 0, vidas[i]);
  circle(posXs[i], posYs[i], 10);
}

function estaViva(i) {
  return vidas[i] > 0;
}

function setup() {
  createCanvas(600, 600);
}

function draw() {
  background(10, 40);
  noStroke();

  // Actualizamos y dibujamos cada chispa recorriendo los arrays en paralelo
  for (let i = 0; i < posXs.length; i++) {
    actualizarChispa(i);
    dibujarChispa(i);
  }

  // Reconstruimos los arrays a mano: recorremos los viejos y solo
  // agregamos a los nuevos las chispas que siguen vivas
  let nuevasPosXs = [];
  let nuevasPosYs = [];
  let nuevasVelXs = [];
  let nuevasVelYs = [];
  let nuevasVidas = [];

  for (let i = 0; i < vidas.length; i++) {
    if (estaViva(i)) {
      nuevasPosXs.push(posXs[i]);
      nuevasPosYs.push(posYs[i]);
      nuevasVelXs.push(velXs[i]);
      nuevasVelYs.push(velYs[i]);
      nuevasVidas.push(vidas[i]);
    }
  }

  posXs = nuevasPosXs;
  posYs = nuevasPosYs;
  velXs = nuevasVelXs;
  velYs = nuevasVelYs;
  vidas = nuevasVidas;

  fill(255);
  text('Partículas vivas: ' + posXs.length, 10, height - 10);
}

function mousePressed() {
  for (let i = 0; i < 30; i++) {
    agregarChispa(mouseX, mouseY);
  }
}
