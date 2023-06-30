String [] lineas;

void setup() {
  size(400, 400);
  textSize(30);
}

void draw() {
  background(200);
  lineas = loadStrings("textos.txt");
  for (int i = 0; i < lineas.length; i++) {
    text(lineas[i], 100, i * 50 + 100);
  }
}
