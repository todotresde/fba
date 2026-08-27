// Ejercicio 10 · Arrays 2D paralelos (campo de fuerzas)
// El campo se guarda en dos arrays 2D paralelos: campoVx y campoVy (la
// componente x y la componente y de cada celda), generados con ruido
// Perlin. Un grupo de "caminantes" (arrays paralelos wxs, wys, wColores)
// lee esas componentes según la celda en la que están y se mueve.

let campoVx = [];
let campoVy = [];
let wxs = [];
let wys = [];
let wColores = [];
const RES = 20; // tamaño de celda del campo
let columnas, filas;

function envolver(valor, maximo) {
  // Si se pasa de un borde, reaparece del otro lado
  if (valor < 0) return maximo;
  if (valor > maximo) return 0;
  return valor;
}

function moverCaminante(i) {
  let cx = constrain(floor(wxs[i] / RES), 0, columnas - 1);
  let cy = constrain(floor(wys[i] / RES), 0, filas - 1);

  // Leemos las componentes del campo en los arrays 2D correspondientes
  let fx = campoVx[cy][cx];
  let fy = campoVy[cy][cx];

  stroke(wColores[i]);
  strokeWeight(2);
  point(wxs[i], wys[i]);

  wxs[i] = envolver(wxs[i] + fx * 1.5, width);
  wys[i] = envolver(wys[i] + fy * 1.5, height);
}

function setup() {
  createCanvas(600, 600);
  columnas = floor(width / RES);
  filas = floor(height / RES);

  // Dos arrays 2D paralelos: una componente del campo por celda
  for (let y = 0; y < filas; y++) {
    let filaVx = [];
    let filaVy = [];
    for (let x = 0; x < columnas; x++) {
      filaVx.push(map(noise(x * 0.1, y * 0.1), 0, 1, -1, 1));
      filaVy.push(map(noise(x * 0.1, y * 0.1, 100), 0, 1, -1, 1));
    }
    campoVx.push(filaVx);
    campoVy.push(filaVy);
  }

  // Arrays paralelos para los caminantes: posición x, posición y, color
  for (let i = 0; i < 200; i++) {
    wxs.push(random(width));
    wys.push(random(height));
    wColores.push(color(random(150, 255), random(150, 255), 255, 40));
  }

  background(10);
}

function draw() {
  for (let i = 0; i < wxs.length; i++) {
    moverCaminante(i);
  }
}

function mousePressed() {
  background(10); // limpiar la estela acumulada
}
