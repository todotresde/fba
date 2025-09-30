let cantAutos = 10;
let autos = [];
let autoJugador = [];

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

function keyPressed(){
  moverAutoJugador();
}
