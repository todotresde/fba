// Ejercicio 12 · Array de imágenes (ciclo de caminata)
// En vez de una sola imagen, cargamos varios frames de caminata en un
// array con un for + push(). Para animar, en cada llamada a draw()
// calculamos qué índice del array mostrar según el tiempo transcurrido:
// el array funciona como una "tira de animación" (film strip).

let framesCaminar = [];
const N_FRAMES = 6;
const ESCALA = 1.6;

let x = -60;
const VELOCIDAD = 3;

function elegirFrame(frames, velocidadAnimacion) {
  // frameCount avanza solo; lo dividimos para que la animación no vaya
  // demasiado rápido, y usamos % (módulo) para volver al principio del
  // array al llegar al final
  let indice = floor(frameCount / velocidadAnimacion) % frames.length;
  //0,1,2,3,4,5,0,1,2,3,4,5,0,
  return frames[indice];
}

function preload() {
  // Cargamos los 6 frames en un array, uno por uno, con un for
  for (let i = 0; i < N_FRAMES; i++) {
    framesCaminar.push(loadImage('images/caminar_' + i + '.png'));
  }
  print(framesCaminar);
}

function setup() {
  createCanvas(600, 600);
  imageMode(CENTER);
}

function draw() {
  background(20);

  let frame = elegirFrame(framesCaminar, 6);

  x += VELOCIDAD;
  if (x > width + 60) {
    x = -60;
  }

  image(frame, x, height / 2, frame.width * ESCALA, frame.height * ESCALA);
}
