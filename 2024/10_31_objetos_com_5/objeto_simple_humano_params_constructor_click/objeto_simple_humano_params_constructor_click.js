let miHumano1 = new Humano(10, 12, "Juan", "M", 100, 100);
let miHumano2 = new Humano(4, 26, "Maria", "F", 300, 50);
let miHumano3 = new Humano(15, 5, "Pepa", "F", 300, 200);

function setup() {
  createCanvas(600,600);
}


function draw() {
  background(255);
  miHumano1.dibujar();
  miHumano2.dibujar();
  miHumano3.dibujar();
}

function mouseClicked(){
  miHumano1.click();
  miHumano2.click();
  miHumano3.click();
}

function keyPressed(){
  miHumano1.nombre = "Juana";
  miHumano1.sexo = "F";
  
  print(miHumano1, miHumano2, miHumano3);
}
