let misHumanos = [];

misHumanos[0] = new Humano(10, 12, "Juan", "M", 100, 100);
misHumanos[1] = new Humano(4, 26, "Maria", "F", 300, 50);
misHumanos[2] = new Humano(15, 5, "Pepa", "F", 300, 200);

function setup() {
  createCanvas(600, 600);
}


function draw() {
  background(255);
  for (let i = 0; i< misHumanos.length; i++) {
    misHumanos[i].dibujar();
  }
}

function mouseClicked() {
  for (let i = 0; i< misHumanos.length; i++) {
    misHumanos[i].click();
  }
}

function keyPressed() {
  misHumanos[0].nombre = "Juana";
  misHumanos[0].sexo = "F";

  print(misHumanos);
}
