boolean personaje_estaSaltando;
int personaje_estaSaltandoDireccion;
int personaje_velocidadSalto = 3;
int personaje_velocidadCaminar = 5;
int personaje_posX = 100;
int personaje_posY = 200;
int topePiso = 200;
int topeSalto = personaje_posY - 100;

void setup() {
  size(400, 400);
}
void draw() {
  background(255);
  fill(100);
  rect(personaje_posX, personaje_posY, 50, 100);
  calcularMovimiento();
}

void calcularMovimiento() {
  calcularMovimientosLaterales();
  calcularQueEstaSaltando();
}

void calcularMovimientosLaterales() {
  if (keyPressed && keyCode == LEFT) {
    personaje_posX-=personaje_velocidadCaminar;
  }
  if (keyPressed && keyCode == RIGHT) {
    personaje_posX+=personaje_velocidadCaminar;
  }
}

void calcularQueEstaSaltando() {
  if (keyPressed && keyCode == UP && !personaje_estaSaltando) {
    personaje_estaSaltando = true;
    personaje_estaSaltandoDireccion = 1; //Esta llendo hacia arriba
  } else if (
    personaje_estaSaltando && 
    personaje_estaSaltandoDireccion == 1 &&
    personaje_posY < topeSalto) {
    personaje_estaSaltandoDireccion = -1;
  } else if (
    personaje_estaSaltando && 
    personaje_estaSaltandoDireccion == -1 &&
    personaje_posY > topePiso) {
    personaje_estaSaltandoDireccion = 0;
    personaje_estaSaltando = false;
  } else if (personaje_estaSaltando && personaje_estaSaltandoDireccion == 1) {
    personaje_posY-=personaje_velocidadSalto;
  } else if (personaje_estaSaltando && personaje_estaSaltandoDireccion == -1) {
    personaje_posY+=personaje_velocidadSalto;
  }
}
