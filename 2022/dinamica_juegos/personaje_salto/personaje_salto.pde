boolean estaSaltando;
int estaSaltandoDireccion;
int posX = 100;
int posY = 200;
int topePiso = 200;
int topeSalto = posY - 50;

void setup() {
  size(400, 400);
}
void draw() {
  background(255);
  fill(100);
  rect(posX, posY, 50, 100);
  calcularMovimiento();
}

void calcularMovimiento() {
  calcularMovimientosLaterales();
  calcularQueEstaSaltando();
}

void calcularMovimientosLaterales() {
  if (keyPressed && keyCode == LEFT) {
    posX--;
  }
  if (keyPressed && keyCode == RIGHT) {
    posX++;
  }
}

void calcularQueEstaSaltando() {
  if (keyPressed && keyCode == UP && !estaSaltando) {
    estaSaltando = true;
    estaSaltandoDireccion = 1; //Esta llendo hacia arriba
  } else if (
    estaSaltando && 
    estaSaltandoDireccion == 1 &&
    posY < topeSalto) {
    estaSaltandoDireccion = -1;
  } else if (
    estaSaltando && 
    estaSaltandoDireccion == -1 &&
    posY > topePiso) {
    estaSaltandoDireccion = 0;
    estaSaltando = false;
  } else if (estaSaltando && estaSaltandoDireccion == 1) {
    posY--;
  } else if (estaSaltando && estaSaltandoDireccion == -1) {
    posY++;
  }
}
