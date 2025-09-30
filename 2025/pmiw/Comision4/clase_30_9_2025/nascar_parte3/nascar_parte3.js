let cantAutos = 10;
let autos = [];
let autoJugador = [];
let anchoAuto = 50;
let altoAuto = 100;

function setup() {
  createCanvas(400,400);
  iniciarlizarAutosCarrera();
  iniciarlizarAutoJugador();
}


function draw() {
  background(200);
  dibujarPista();
  dibujarAutosCarerra();
  dibujarAutoJugador();
  analizarColision();
}
