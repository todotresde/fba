boolean mostrar1 = false;
boolean mostrar2 = false;
boolean mostrar3 = false;
color colorBoton1 = color(200);
color colorBoton2 = color(200);
color colorBoton3 = color(200);
color colorLinea = color(0);

void setup() {
  size(400, 400);
  dibujarPantalla();
}

void draw() {
  dibujarLapiz();
  boton(50,350,1,30);
  boton(100,350,2,30);
  boton(150,350,3,30);
}
