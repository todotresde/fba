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
  text("Hola Mundo Hola Mundo Hola Mundo Hola Mundo Hola Mundo Hola Mundo", 0, 100, 400, 300);
  
}

void mouseClicked() {
}
