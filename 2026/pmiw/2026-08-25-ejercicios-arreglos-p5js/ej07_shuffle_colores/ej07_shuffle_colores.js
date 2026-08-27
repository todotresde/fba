// Ejercicio 7 · Reordenar un array a mano (shuffle y sort manuales)
// Un array de "bloques" de colores fijos se reordena sin usar funciones
// mágicas: escribimos nosotros el algoritmo con un for y una variable
// temporal para intercambiar posiciones. Ambos algoritmos se escriben
// como funciones propias que reciben el array como parámetro.
// Click: mezcla el array al azar. Tecla "s": lo ordena por brillo.

let bloques = [];
const N = 12;

function mezclarArray(arr) {
  // Shuffle a mano: recorremos el array de atrás para adelante e
  // intercambiamos cada posición con una posición al azar (usando una
  // variable temporal para no perder el valor durante el intercambio)
  for (let i = arr.length - 1; i > 0; i--) {
    let j = floor(random(i + 1));
    let temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }
}

function ordenarPorBrillo(arr) {
  // Sort a mano (ordenamiento burbuja): comparamos cada par de elementos
  // vecinos y los intercambiamos si están en el orden equivocado
  for (let i = 0; i < arr.length - 1; i++) {
    for (let j = 0; j < arr.length - 1 - i; j++) {
      if (brightness(arr[j]) > brightness(arr[j + 1])) {
        let temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
}

function setup() {
  createCanvas(600, 600);
  colorMode(HSB, 360, 100, 100);
  noStroke();

  // Array de colores generados proceduralmente (paleta arcoíris)
  for (let i = 0; i < N; i++) {
    bloques.push(color((360 / N) * i, 80, 90));
  }
}

function draw() {
  background(0, 0, 8);

  let anchoBloque = width / bloques.length;
  for (let i = 0; i < bloques.length; i++) {
    fill(bloques[i]);
    rect(i * anchoBloque, 0, anchoBloque, height);
  }
}

function mousePressed() {
  mezclarArray(bloques);
}

function keyPressed() {
  if (key === 's') {
    ordenarPorBrillo(bloques);
  }
}
