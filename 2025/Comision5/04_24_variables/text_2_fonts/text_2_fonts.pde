PFont miFuente, miFuente2;

void setup() {
  size(400, 400);
  miFuente = loadFont("CalifornianFB-Italic-48.vlw");
  miFuente2 = loadFont("Garamond-Bold-48.vlw");
}

void draw() {
  background(200);
  textSize(40);
  textFont(miFuente);
  text("Hola Mundo", 100, 200);
  
  textFont(miFuente2);
  text("Chau Mundo", 100, 300);
}

void mouseClicked() {
}
