let posX = 200;
let posY = -50;

function setup() {
  createCanvas(400, 400);
}

function draw() {
  background(220);
  fill(0);
  ellipse(posX, posY, 10, 10);
  posY++;

  if (keyIsPressed ) {
    teclaPresionada();
  }
}

function teclaPresionada() {
  if (keyCode == LEFT_ARROW) {
    posX-=2;
  } else if (keyCode == RIGHT_ARROW) {
    posX+=2;
  }
}
