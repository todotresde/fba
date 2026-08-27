// Ejercicio 1 · Array de colores (paleta)
// Un array guarda una lista de colores. Recorremos el array con un for
// y pintamos una franja vertical por cada color. Cambiá los valores de
// "paleta" o agregá/quitá colores para ver cómo cambia el resultado.
// Click: agrega un color nuevo al array con push().

let paleta;

function dibujarFranja(col, x, ancho) {
  fill(col);
  rect(x, 0, ancho, height);
}

function dibujarCirculoFlotante(col, x, y) {
  fill(col);
  circle(x, y, 60);
}

function setup() {
  createCanvas(600, 600);
  noStroke();

  // El array: una lista ordenada de colores.
  paleta = [
    color(230, 57, 70),
    color(241, 250, 238),
    color(168, 218, 220),
    color(69, 123, 157),
    color(29, 53, 87)
  ];
}

function draw() {
  background(20);

  let anchoFranja = width / paleta.length;

  // Recorrido básico del array con for + índice
  for (let i = 0; i < paleta.length; i++) {
    dibujarFranja(paleta[i], i * anchoFranja, anchoFranja);
  }
  
}

function mousePressed() {
  // Agregar un color nuevo al array con push()
  print(paleta);
  paleta.push(color(random(255), random(255), random(255)));
}
