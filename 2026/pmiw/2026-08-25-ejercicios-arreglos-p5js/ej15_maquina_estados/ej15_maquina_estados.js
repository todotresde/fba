// Ejercicio 15 · Máquina de estados para animar un personaje
// Presentación estilo "demo" de videojuego: el personaje camina, salta dos
// veces y sigue caminando, en un ciclo automático, sobre un fondo con
// elementos decorativos (nubes) que se mueven con arrays paralelos.
//
// El corazón del ejercicio es la MÁQUINA DE ESTADOS: en cada momento el
// personaje está en UN estado (una palabra: 'espera', 'entra', 'salta1',
// 'salta2' o 'sale'), y hay reglas claras que dicen cuándo se pasa de un
// estado al siguiente:
//
//   espera --(pasaron 70 cuadros)--> entra
//   entra  --(llegó al centro)-----> salta1
//   salta1 --(pasaron 35 cuadros)--> salta2
//   salta2 --(pasaron 35 cuadros)--> sale
//   sale   --(salió de pantalla)---> espera   (y vuelve a arrancar)
//
// Cada estado además sabe qué animación mostrar (quieto / caminar / saltar)
// y si el personaje se tiene que mover en ese estado o no.

let fondo, nube;
let framesQuieto, framesCaminar, framesSaltar;

const ESCALA = 1.6;
const PERSONAJE_Y = 358; // altura fija en pantalla (ya deja al personaje parado sobre el pasto)
const ESPERA_X = 90;     // dónde arranca y termina cada vuelta
const CENTRO_X = 300;    // hasta dónde camina antes de saltar
const VELOCIDAD = 3;
const DURACION_ESPERA = 70;
const DURACION_SALTO = 35;

let estado = 'espera';
let contador = 0;
let x = ESPERA_X;

function cargarAccion(nombre, cantidad) {
  // Carga los frames de UNA acción (por ejemplo "caminar") y devuelve el array
  let frames = [];
  for (let i = 0; i < cantidad; i++) {
    frames.push(loadImage('images/' + nombre + '_' + i + '.png'));
  }
  return frames;
}

function cambiarEstado(nuevoEstado) {
  estado = nuevoEstado;
  contador = 0; // el contador arranca de nuevo para cada estado
}

function framesDelEstado(est) {
  if (est === 'espera') return framesQuieto;
  if (est === 'entra' || est === 'sale') return framesCaminar;
  return framesSaltar; // 'salta1' y 'salta2' comparten la misma animación
}

function actualizarEstado() {
  contador++;

  if (estado === 'espera' && contador > DURACION_ESPERA) {
    cambiarEstado('entra');
  } else if (estado === 'entra' && x >= CENTRO_X) {
    cambiarEstado('salta1');
  } else if (estado === 'salta1' && contador > DURACION_SALTO) {
    cambiarEstado('salta2');
  } else if (estado === 'salta2' && contador > DURACION_SALTO) {
    cambiarEstado('sale');
  } else if (estado === 'sale' && x > width + 80) {
    x = ESPERA_X;
    cambiarEstado('espera');
  }
}

function moverSegunEstado() {
  // Solo caminamos (avanzamos x) en los estados "entra" y "sale"
  if (estado === 'entra' || estado === 'sale') {
    x += VELOCIDAD;
  }
}

function elegirFrame(frames, velocidadAnimacion) {
  let indice = floor(frameCount / velocidadAnimacion) % frames.length;
  return frames[indice];
}

// --- Elementos decorativos: nubes con arrays paralelos ---
let nubesX = [];
let nubesY = [];
let nubesVel = [];

function agregarNube(x, y, vel) {
  nubesX.push(x);
  nubesY.push(y);
  nubesVel.push(vel);
}

function moverNube(i) {
  nubesX[i] += nubesVel[i];
  if (nubesX[i] > width + 80) {
    nubesX[i] = -80;
  }
}

function dibujarNube(i) {
  image(nube, nubesX[i], nubesY[i]);
}

function preload() {
  fondo = loadImage('images/fondo.png');
  nube = loadImage('images/nube.png');
  framesQuieto = cargarAccion('quieto', 2);
  framesCaminar = cargarAccion('caminar', 6);
  framesSaltar = cargarAccion('saltar', 4);
}

function setup() {
  createCanvas(600, 600);

  agregarNube(90, 90, 0.4);
  agregarNube(320, 60, 0.25);
  agregarNube(480, 130, 0.5);
  agregarNube(200, 200, 1);
}

function draw() {
  imageMode(CORNER);
  image(fondo, 0, 0);

  imageMode(CENTER);
  for (let i = 0; i < nubesX.length; i++) {
    moverNube(i);
    dibujarNube(i);
  }

  actualizarEstado();
  moverSegunEstado();

  let frames = framesDelEstado(estado);
  let frame = elegirFrame(frames, 6);
  image(frame, x, PERSONAJE_Y, frame.width * ESCALA, frame.height * ESCALA);

  noStroke();
  fill(30);
  textSize(14);
  text('espera → entra → salta1 → salta2 → sale', 14, height - 32);
  fill(0, 90, 40);
  textSize(18);
  text('Estado actual: ' + estado, 14, height - 12);
}
