let jugador1 = [];
let jugador2 = [];
let cant = 10;
let tam;

function setup() {
  createCanvas(800,400);
  tam = (width/2)/cant;
  
  for(let i = 0; i < cant; i++){
    jugador1[i] = [];
    jugador2[i] = [];
    for(let j = 0; j < cant; j++){
      jugador1[i][j] = 0;
      jugador2[i][j] = 0;
    }
  }
  
  armarTableroJugador1();
  armarTableroJugador2();
}


function draw() {
  background(200);
  dibujarTableroJugador1();
  dibujarTableroJugador2();
}

function mousePressed(){
  let i = floor(map(mouseX, 0, width, 0, cant-1));
  let j = floor(map(mouseY, 0, height, 0, cant-1));

  jugador1[i][j]++;
}
