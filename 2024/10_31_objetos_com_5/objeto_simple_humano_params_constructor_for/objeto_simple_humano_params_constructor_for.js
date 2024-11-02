let misHumanos = [];

misHumanos[0] = new Humano(10, 12, "Juan", "M", 100, 100);
misHumanos[1] = new Humano(4, 26, "Maria", "F", 300, 50);
misHumanos[2] = new Humano(15, 5, "Pepa", "F", 300, 200);

function setup() {
  createCanvas(600,600);
}


function draw() {
  background(255);
  misHumanos[0].dibujar();
  misHumanos[1].dibujar();
  misHumanos[2].dibujar();
}

function mouseClicked(){
  misHumanos[0].click();
  misHumanos[1].click();
  misHumanos[2].click();
}

function keyPressed(){
  misHumanos[0].nombre = "Juana";
  misHumanos[0].sexo = "F";
  
  print(misHumanos);
}
