let buscaminas = [];
let show = [];
let cant = 10;

function setup() {
  createCanvas(400,400);
  tam = width/cant;
  
  iniciarTablero();
  ubicarMinasEnElTablero();
  setearCantidadDeMinasPorCelda()
}


function draw() {
  background(200);
  dibujarTablero()
}

function mousePressed(){
  let i = floor(map(mouseX, 0, 400, 0, cant));
  let j = floor(map(mouseY, 0, 400, 0, cant));
  
  show[i][j] = true;
}

function keyPressed(){

}
