PFont miFuente;

void setup() {
  size(400, 400);
  miFuente = loadFont("CalifornianFB-Italic-48.vlw");
}

void draw() {
  background(200);
  textSize(40);
  textFont(miFuente);
  text("Hola Mundo", 100, 200);
}

void mouseClicked() {
}
