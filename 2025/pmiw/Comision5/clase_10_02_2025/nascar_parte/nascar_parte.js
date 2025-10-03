let cantAutos = 10;
let autos = [];
let autoJugador = [];
let anchoAuto = 50;
let altoAuto = 100;
let estado = 0;

function setup() {
  createCanvas(400,400);
  iniciarlizarAutosCarrera();
  iniciarlizarAutoJugador();
}


function draw() {
  background(200);
  if(estado == 0){
    dibujarPista();
    dibujarAutosCarerra();
    dibujarAutoJugador();
    analizarColision();
  }else{
    text("FIN", 200, 200);
  }
}

function mouseClicked(){
  if(estado == 1){
    estado = 0;
    iniciarlizarAutosCarrera();
    iniciarlizarAutoJugador();
  }
}
