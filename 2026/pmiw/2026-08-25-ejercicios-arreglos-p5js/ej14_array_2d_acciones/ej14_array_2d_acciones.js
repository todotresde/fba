// Ejercicio 14 · Array 2D de imágenes (varias acciones)
// "acciones" es un array de arrays: cada posición guarda los frames de
// UNA acción distinta (quieto, caminar, saltar). Elegimos la acción según
// las flechas del teclado (mientras se mantienen apretadas), y dentro de
// esa acción recorremos sus frames con el mismo patrón del ejercicio
// anterior: acciones[accionActual][indice].

let acciones = [];
const NOMBRES = ['quieto', 'caminar', 'saltar'];
const FRAMES_POR_ACCION = [2, 6, 4];
const ESCALA = 1.6;
const VELOCIDAD = 4;

let accionActual = 0;
let x = 300;

function cargarAccion(nombre, cantidad) {
  // Carga los frames de UNA acción (por ejemplo "caminar") y devuelve el array
  let frames = [];
  for (let i = 0; i < cantidad; i++) {
    frames.push(loadImage('images/' + nombre + '_' + i + '.png'));
  }
  return frames;
}

function elegirFrame(frames, velocidadAnimacion) {
  let indice = floor(frameCount / velocidadAnimacion) % frames.length;
  return frames[indice];
}

function preload() {
  // Construimos el array 2D: por cada acción, cargamos sus frames con
  // cargarAccion() y agregamos el resultado al array "acciones"
  for (let a = 0; a < NOMBRES.length; a++) {
    acciones.push(cargarAccion(NOMBRES[a], FRAMES_POR_ACCION[a]));
  }
}

function setup() {
  createCanvas(600, 600);
  imageMode(CENTER);
}

function draw() {
  background(20);

  // Elegimos la acción según qué flecha está apretada en este momento
  if (keyIsDown(UP_ARROW)) {
    accionActual = 2; // saltar
  } else if (keyIsDown(LEFT_ARROW) || keyIsDown(RIGHT_ARROW)) {
    accionActual = 1; // caminar
  } else {
    accionActual = 0; // quieto
  }

  // Nos desplazamos mientras se mantiene apretada una flecha horizontal
  if (keyIsDown(LEFT_ARROW)) {
    x -= VELOCIDAD;
  }
  if (keyIsDown(RIGHT_ARROW)) {
    x += VELOCIDAD;
  }
  x = constrain(x, 60, width - 60);

  // acciones[accionActual] es el array de frames de la acción elegida
  let frames = acciones[accionActual];
  let frame = elegirFrame(frames, 6);

  image(frame, x, height / 2, frame.width * ESCALA, frame.height * ESCALA);

  fill(255);
  noStroke();
  text('Acción: ' + NOMBRES[accionActual] + '  (← → caminar, ↑ saltar)', 10, height - 10);
}
