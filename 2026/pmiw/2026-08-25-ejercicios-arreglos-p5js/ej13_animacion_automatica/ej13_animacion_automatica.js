// Ejercicio 13 · Animación automática (caminar, saltar, seguir caminando)
// "acciones" es un array de arrays: cada posición guarda los frames de
// UNA acción distinta (quieto, caminar, saltar). Acá nadie aprieta ninguna
// tecla: el programa decide solo cuándo cambiar de acción, mirando la
// posición x del personaje y contando cuadros con un par de variables.

let acciones = [];
const NOMBRES = ['quieto', 'caminar', 'saltar'];
const FRAMES_POR_ACCION = [2, 6, 4];
const ESCALA = 1.6;
const VELOCIDAD = 3;
const X_SALTO = 300;        // posición en la que el personaje salta
const DURACION_SALTO = 40;  // cuántos cuadros dura el salto

let accionActual = 1; // arranca caminando
let x = -60;
let contadorSalto = 0;
let yaSalto = false; // evita que vuelva a saltar apenas termina de saltar

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
  print(acciones);
}

function setup() {
  createCanvas(600, 600);
  imageMode(CENTER);
}

function draw() {
  background(20);

  if (accionActual === 1) {
    // Caminando: avanzamos, y al llegar al punto marcado (una sola vez por
    // recorrido) pasamos a saltar
    x += VELOCIDAD;
    if (x >= X_SALTO && !yaSalto) {
      accionActual = 2;
      contadorSalto = 0;
      yaSalto = true;
    }
  } else if (accionActual === 2) {
    // Saltando: contamos cuadros; al cumplir la duración, volvemos a caminar
    contadorSalto++;
    if (contadorSalto >= DURACION_SALTO) {
      accionActual = 1;
    }
  }

  // Al salir por la derecha, reiniciamos el recorrido desde la izquierda
  if (x > width + 60) {
    x = -60;
    accionActual = 1;
    yaSalto = false; // habilitamos el salto para el próximo recorrido
  }

  // acciones[accionActual] es el array de frames de la acción activa
  let frames = acciones[accionActual];
  let frame = elegirFrame(frames, 6);

  image(frame, x, height / 2, frame.width * ESCALA, frame.height * ESCALA);

  fill(255);
  noStroke();
  text('Acción: ' + NOMBRES[accionActual], 10, height - 10);
}
