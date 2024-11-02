let miHumano1 = new Humano();
let miHumano2 = new Humano();
let miHumano3 = new Humano();

function setup() {
  createCanvas(600,600);
  print(miHumano1, miHumano2);
}


function draw() {
  miHumano1.dibujar();
  miHumano2.dibujar();
  miHumano3.dibujar();
}

function mouseClicked(){
  miHumano1.sexo = "F";
}
