void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  line(100, 100, 100, 150);//Cuerpo
  ellipse(100, 100, 30, 30);//Cabeza
  line(100, 150, 120, 170);//Pierna Izq
  line(100, 150, 80, 170);//Pierna Der
  line(100, 130, 120, 150);//Mano Izq
  line(100, 130, 80, 150);//Mano Der
}
