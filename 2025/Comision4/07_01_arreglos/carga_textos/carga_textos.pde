String [] nombres;

void setup() {
  size(400, 400);
  textSize(20);
  nombres = loadStrings("nombres.txt");
}

void draw() {
  for (int i=0; i < nombres.length; i++) {
    text(nombres[i], 40, (i * 40) + 40);
  }
}

void mouseClicked() {
 
}
