// Ejercicio 11 · Cargar y mostrar una imagen
// Antes de armar un array de imágenes, aprendemos a cargar UNA sola con
// loadImage() dentro de preload() (una función que p5 ejecuta ANTES de
// setup(), así la imagen ya está lista cuando arranca el dibujo) y a
// mostrarla con image().

let personaje;
let escala = 1.6;

function dibujarPersonaje(esc) {
  let w = personaje.width * esc;
  let h = personaje.height * esc;
  image(personaje, width / 2, height / 2, w, h);
}

function preload() {
  // preload() espera a que la imagen termine de cargar antes de seguir
  personaje = loadImage('personaje.png');
}

function setup() {
  createCanvas(600, 600);
  imageMode(CENTER); // dibujamos la imagen centrada en (x, y)
}

function draw() {
  background(20);
  dibujarPersonaje(escala);
}

function mousePressed() {
  // Cada click cambia la escala: la imagen es la misma, cambia el tamaño
  escala = random(1, 3);
}
