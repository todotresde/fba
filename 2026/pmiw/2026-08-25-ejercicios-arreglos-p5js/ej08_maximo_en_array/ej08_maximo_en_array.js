// Ejercicio 8 · Recorrer un array y acumular (buscar el máximo)
// Un array guarda la altura de cada barra. Para encontrar la barra más
// alta recorremos el array a mano con un for, guardando en una variable
// el índice más grande visto hasta el momento (patrón "acumulador").

let alturas = [];
const N = 24;

function generarAlturas(cantidad) {
  let arr = [];
  for (let i = 0; i < cantidad; i++) {
    arr.push(random(40, height - 80));
  }
  return arr;
}

function buscarIndiceMaximo(arr) {
  let indiceMax = 0;
  for (let i = 1; i < arr.length; i++) {
    if (arr[i] > arr[indiceMax]) {
      indiceMax = i;
    }
  }
  return indiceMax;
}

function dibujarBarra(x, ancho, alto, esMax) {
  if (esMax) {
    fill(255, 80, 60); // resaltamos la barra más alta
  } else {
    fill(120, 170, 255);
  }
  rect(x, height - alto, ancho, alto);
}

function setup() {
  createCanvas(600, 600);
  alturas = generarAlturas(N);
}

function draw() {
  background(12);
  noStroke();

  let anchoBarra = width / alturas.length;
  let indiceMax = buscarIndiceMaximo(alturas);

  for (let i = 0; i < alturas.length; i++) {
    dibujarBarra(i * anchoBarra, anchoBarra * 0.8, alturas[i], i === indiceMax);
  }
}

function mousePressed() {
  alturas = generarAlturas(N);
}
